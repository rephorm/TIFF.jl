#
# A pure julia TIFF loader
#

load("tiff_h")
load("strpack")
load("bitarray")

type TiffFile
    file::IO
    endianness::Endianness
    ifd_offset::Uint32 # XXX this is just the first IFD...

    pack::Function
    unpack::Function
end

type TiffHeader
    magic::Int16
    ifd_offset::Uint32
end

type IFDEntry
    tag::Uint16
    data_type::Uint16
    count::Uint32
    value_off::Uint32
end

data_type_map = [
  0x0001 => Uint8,            # CHAR
  0x0002 => Uint8,            # ASCII
  0x0003 => Uint16,           # SHORT
  0x0004 => Uint32,           # LONG
  0x0005 => Rational{Uint32}, # RATIONAL
  0x0006 => Int8,             # SBYTE
  0x0007 => Any,              # UNDEFINED 
  0x0008 => Int16,            # SSHORT
  0x0009 => Int16,            # SSHORT
  0x0010 => Rational{Int32},  # SRATIONAL
  0x0011 => Float32,          # FLOAT
  0x0012 => Float64,          # DOUBLE
  # the following are in tiff.h, but not the spec
  #0x0013 => Uint32,           # IFD
  #0x0016 => Uint64,           # LONG8
  #0x0017 => Int64,            # SLONG8
  #0x0018 => Uint64,           # IFD8
]

IFD = Dict{Uint16, IFDEntry}

parse_endianness(flag::String) = flag == "II" ? LittleEndian() :
                                 flag == "MM" ? BigEndian() :
                                 error("Invalid tiff file (invalid endianness)")
parse_endianness(flag::Array{Char,1}) = parse_endianness(CharString(flag))
parse_endianness(io::IO) = parse_endianness(read(io, Char, 2))

function tiff_open(io::IO)
    endianness = parse_endianness(io)
    header = unpack(io, Struct(TiffHeader, endianness))
    # TODO: add support for BigTiff (header.magic == 43)
    if (header.magic != 42)
        error("Invalid tiff file (incorrect magic number)")
    end

    packer, unpacker = endianness_converters(endianness)
    TiffFile(io, endianness, header.ifd_offset, packer, unpacker)
end
tiff_open(filename::String) = tiff_open(open(filename))

function read_ifd(tf::TiffFile, ifd_offset)
    seek(tf.file, ifd_offset)
    count = tf.unpack(read(tf.file, Uint16))
    println("Num entries: $(int(count))")

    ifd = IFD()
    for i in 1:count
        entry = unpack(tf.file, Struct(IFDEntry, tf.endianness))
        ifd[entry.tag] = entry
    end

    next_offset = tf.unpack(read(tf.file, Uint32))

    (ifd, next_offset)
end


#
# tag_value methods
#

function tag_value_array(tf::TiffFile, entry::IFDEntry)
    #
    # Get array of values in IFD entry
    #

    T = data_type_map[entry.data_type]

    sz = isa(T, CompositeKind) ?
         sizeof(Struct(T, tf.endianness)) :
         T == Any ? 1 :
         sizeof(T)

    if (sz * entry.count <= 4)
        # value_off contains the value itself
        # pack it back into an IOString with original byte order
        source = IOString()
        write(source, tf.pack(entry.value_off))
        seek(source, 0)
    else
        # value_off is the location in the file of the actual data
        source = tf.file
        seek(source, entry.value_off)
    end

    # now, read it back in
    val = Array(T, entry.count)
    for i in 1:entry.count
        val[i] = isa(T, CompositeKind) ?
                 unpack(source, Struct(T, tf.endianness)) :
                 tf.unpack(read(source, T))
    end
    val
end

function tag_value(tf::TiffFile, entry::IFDEntry)
    #
    #Get value of IFD entry.

    #NB. All TIFF tag values are arrays (there are no scalar types)
    #    For convenience, this function returns the element of any length-1 arrays.
    #    If an array is desired in all cases, use `tag_value_array`.
    #
    val = tag_value_array(tf, entry)
    entry.count == 1 ? val[1] : val
end

function tag_value_array(tf::TiffFile, ifd::IFD, tag::Uint16, default)
    entry = get(ifd, tag, None)
    return entry == None ? default : tag_value_array(tf, entry)
end

function tag_value(tf::TiffFile, ifd::IFD, tag::Uint16, default)
    entry = get(ifd, tag, None)
    return entry == None ? default : tag_value(tf, entry)
end

tag_value(tf::TiffFile, ifd::IFD, tag::Real, default) = tag_value(tf, ifd, uint16(tag), default)
tag_value(tf::TiffFile, ifd::IFD, tag::Real) = tag_value(tf, ifd, uint16(tag))
tag_value(tf::TiffFile, ifd::IFD, tag::Uint16) = tag_value(tf, ifd, tag, None)
tag_value_array(tf::TiffFile, ifd::IFD, tag::Real) = tag_value(tf, ifd, uint16(tag))
tag_value_array(tf::TiffFile, ifd::IFD, tag::Uint16) = tag_value(tf, ifd, tag, None)

function read_image_data(tf::TiffFile, ifd::IFD)
    photometric       = tag_value(tf, ifd, TIFFTAG_PHOTOMETRIC)
    compression       = tag_value(tf, ifd, TIFFTAG_COMPRESSION)
    image_length      = tag_value(tf, ifd, TIFFTAG_IMAGELENGTH)
    image_width       = tag_value(tf, ifd, TIFFTAG_IMAGEWIDTH)
    rows_per_strip    = tag_value(tf, ifd, TIFFTAG_ROWSPERSTRIP)
    bits_per_sample   = tag_value(tf, ifd, TIFFTAG_BITSPERSAMPLE, one(Uint8))
    samples_per_pixel = tag_value(tf, ifd, TIFFTAG_SAMPLESPERPIXEL, one(Uint8))
    extra_samples     = tag_value_array(tf, ifd, TIFFTAG_EXTRASAMPLES)
    strip_offsets     = tag_value_array(tf, ifd, TIFFTAG_STRIPOFFSETS)
    strip_byte_counts = tag_value_array(tf, ifd, TIFFTAG_STRIPBYTECOUNTS)

    println("photometric: $photometric\ncompression: $compression\nimage_length: $image_length\nimage_width: $image_width\nrows_per_strip: $rows_per_strip\nstrip_offsets: $strip_offsets\nstrip_byte_counts: $strip_byte_counts\nbits_per_sample: $bits_per_sample\nsamples_per_pixel: $samples_per_pixel\nextra_samples: $extra_samples\n")

    if (samples_per_pixel == 1 && bits_per_sample == 1)
        pixels = BitArray(int(image_length), int(image_length), int(samples_per_pixel))
    else
        T = [
        Uint8,
        Uint16,
        Uint32,
        Uint32,
        Uint64,
        Uint64][div(bits_per_sample, 8)]

        println(T)
        if (length(bits_per_sample) > 1)
            if (!all(bits_per_sample .== first(bits_per_sample)))
                error("Unsupported Format: Bit sizes of samples differ.")
            end
            T = T[1]
        end
        println(T)

        pixels  = Array(T, image_length, image_width, samples_per_pixel)
    end

    row = one(Uint)
    for (offset, bytes) in zip(strip_offsets, strip_byte_counts)
        next_row = decompress_image_data(tf, offset, bytes, compression, pixels, row)
        row += rows_per_strip
        if (row > image_length)
            row = image_length + 1
        end
        if (next_row != row)
            error("Invalid data read in TIFF file ($row, $next_row).")
        end
    end

    pixels
end

function decompress_image_data{T,N}(tf::TiffFile,
                                    offset::Unsigned,
                                    bytes::Unsigned,
                                    compression::Unsigned,
                                    pixels::Union(Array{T,N}, BitArray{T,N}),
                                    row::Unsigned)
    height, width, samples = size(pixels) 
    seek(tf.file, offset)
    bytes_read = 0
    if (compression == 1)
        while (bytes_read < bytes)
            if (isa(pixels, BitArray))
                val = tf.unpack(read(tf.file, Uint8))
                col = 1
                for i in 1:8
                    pixels[row,col,1] = val & (1<<(i-1))
                    col += 1
                end
                if col == width
                    row += 1
                    col = 1
                end
            else
                for col in 1:width
                    for samp in 1:samples
                        pixels[row,col,samp] = tf.unpack(read(tf.file, T))
                        bytes_read += sizeof(T)
                    end
                end
            end
            row += 1
        end
        println("read: $bytes_read, $(samples*width)")
    else
        error("Unsupported compression")
    end

    return row
end

function tiff_close(tf::TiffFile)
    close(tf.file)
end

function tiff_imread(file::String)
    tf = tiff_open(file)
    ifd, next_off = read_ifd(tf, tf.ifd_offset)
    img = read_image_data(tf, ifd)
    tiff_close(tf)
    return img
end
