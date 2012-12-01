#
# The following constants are converted from libtiff's tiff.h (v 4.0.3)
#


#
# NB: In the comments below,
#  - items marked with a + are obsoleted by revision 5.0,
#  - items marked with a ! are introduced in revision 6.0.
#  - items marked with a % are introduced post revision 6.0.
#  - items marked with a $ are obsoleted by revision 6.0.
#  - items marked with a & are introduced by Adobe DNG specification.
# 

const TIFFTAG_SUBFILETYPE = 254 # subfile data descriptor 
const   FILETYPE_REDUCEDIMAGE = 0x1 # reduced resolution version 
const   FILETYPE_PAGE = 0x2 # one page of many 
const   FILETYPE_MASK = 0x4 # transparency mask 
const TIFFTAG_OSUBFILETYPE = 255 # +kind of data in subfile 
const   OFILETYPE_IMAGE = 1 # full resolution image data 
const   OFILETYPE_REDUCEDIMAGE = 2 # reduced size image data 
const   OFILETYPE_PAGE = 3 # one page of many 
const TIFFTAG_IMAGEWIDTH = 256 # image width in pixels 
const TIFFTAG_IMAGELENGTH = 257 # image height in pixels 
const TIFFTAG_BITSPERSAMPLE = 258 # bits per channel (sample) 
const TIFFTAG_COMPRESSION = 259 # data compression technique 
const   COMPRESSION_NONE = 1 # dump mode 
const   COMPRESSION_CCITTRLE = 2 # CCITT modified Huffman RLE 
const   COMPRESSION_CCITTFAX3 = 3 # CCITT Group 3 fax encoding 
const   COMPRESSION_CCITT_T4 = 3 # CCITT T.4 (TIFF 6 name) 
const   COMPRESSION_CCITTFAX4 = 4 # CCITT Group 4 fax encoding 
const   COMPRESSION_CCITT_T6 = 4 # CCITT T.6 (TIFF 6 name) 
const   COMPRESSION_LZW = 5 # Lempel-Ziv  & Welch 
const   COMPRESSION_OJPEG = 6 # !6.0 JPEG 
const   COMPRESSION_JPEG = 7 # %JPEG DCT compression 
const   COMPRESSION_T85 = 9 # !TIFF/FX T.85 JBIG compression 
const   COMPRESSION_T43 = 10 # !TIFF/FX T.43 colour by layered JBIG compression 
const   COMPRESSION_NEXT = 32766 # NeXT 2-bit RLE 
const   COMPRESSION_CCITTRLEW = 32771 # #1 w/ word alignment 
const   COMPRESSION_PACKBITS = 32773 # Macintosh RLE 
const   COMPRESSION_THUNDERSCAN = 32809 # ThunderScan RLE 
#  codes 32895-32898 are reserved for ANSI IT8 TIFF/IT <dkelly@apago.com) 
const   COMPRESSION_IT8CTPAD = 32895 # IT8 CT w/padding 
const   COMPRESSION_IT8LW = 32896 # IT8 Linework RLE 
const   COMPRESSION_IT8MP = 32897 # IT8 Monochrome picture 
const   COMPRESSION_IT8BL = 32898 # IT8 Binary line art 
#  compression codes 32908-32911 are reserved for Pixar 
const   COMPRESSION_PIXARFILM = 32908 # Pixar companded 10bit LZW 
const   COMPRESSION_PIXARLOG = 32909 # Pixar companded 11bit ZIP 
const   COMPRESSION_DEFLATE = 32946 # Deflate compression 
const   COMPRESSION_ADOBE_DEFLATE = 8 # Deflate compression, as recognized by Adobe 
#  compression code 32947 is reserved for Oceana Matrix <dev@oceana.com> 
const   COMPRESSION_DCS = 32947 # Kodak DCS encoding 
const   COMPRESSION_JBIG = 34661 # ISO JBIG 
const   COMPRESSION_SGILOG = 34676 # SGI Log Luminance RLE 
const   COMPRESSION_SGILOG24 = 34677 # SGI Log 24-bit packed 
const   COMPRESSION_JP2000 = 34712 # Leadtools JPEG2000 
const   COMPRESSION_LZMA = 34925 # LZMA2 
const TIFFTAG_PHOTOMETRIC = 262 # photometric interpretation 
const   PHOTOMETRIC_MINISWHITE = 0 # min value is white 
const   PHOTOMETRIC_MINISBLACK = 1 # min value is black 
const   PHOTOMETRIC_RGB = 2 # RGB color model 
const   PHOTOMETRIC_PALETTE = 3 # color map indexed 
const   PHOTOMETRIC_MASK = 4 # $holdout mask 
const   PHOTOMETRIC_SEPARATED = 5 # !color separations 
const   PHOTOMETRIC_YCBCR = 6 # !CCIR 601 
const   PHOTOMETRIC_CIELAB = 8 # !1976 CIE Lab 
const   PHOTOMETRIC_ICCLAB = 9 # ICC Lab [Adobe TIFF Technote 4] 
const   PHOTOMETRIC_ITULAB = 10 # ITU Lab 
const   PHOTOMETRIC_LOGL = 32844 # CIE Log2(L) 
const   PHOTOMETRIC_LOGLUV = 32845 # CIE Log2(L) (u',v') 
const TIFFTAG_THRESHHOLDING = 263 # +thresholding used on data 
const   THRESHHOLD_BILEVEL = 1 # b&w art scan 
const   THRESHHOLD_HALFTONE = 2 # or dithered scan 
const   THRESHHOLD_ERRORDIFFUSE = 3 # usually floyd-steinberg 
const TIFFTAG_CELLWIDTH = 264 # +dithering matrix width 
const TIFFTAG_CELLLENGTH = 265 # +dithering matrix height 
const TIFFTAG_FILLORDER = 266 # data order within a byte 
const   FILLORDER_MSB2LSB = 1 # most significant -> least 
const   FILLORDER_LSB2MSB = 2 # least significant -> most 
const TIFFTAG_DOCUMENTNAME = 269 # name of doc. image is from 
const TIFFTAG_IMAGEDESCRIPTION = 270 # info about image 
const TIFFTAG_MAKE = 271 # scanner manufacturer name 
const TIFFTAG_MODEL = 272 # scanner model name/number 
const TIFFTAG_STRIPOFFSETS = 273 # offsets to data strips 
const TIFFTAG_ORIENTATION = 274 # +image orientation 
const   ORIENTATION_TOPLEFT = 1 # row 0 top, col 0 lhs 
const   ORIENTATION_TOPRIGHT = 2 # row 0 top, col 0 rhs 
const   ORIENTATION_BOTRIGHT = 3 # row 0 bottom, col 0 rhs 
const   ORIENTATION_BOTLEFT = 4 # row 0 bottom, col 0 lhs 
const   ORIENTATION_LEFTTOP = 5 # row 0 lhs, col 0 top 
const   ORIENTATION_RIGHTTOP = 6 # row 0 rhs, col 0 top 
const   ORIENTATION_RIGHTBOT = 7 # row 0 rhs, col 0 bottom 
const   ORIENTATION_LEFTBOT = 8 # row 0 lhs, col 0 bottom 
const TIFFTAG_SAMPLESPERPIXEL = 277 # samples per pixel 
const TIFFTAG_ROWSPERSTRIP = 278 # rows per strip of data 
const TIFFTAG_STRIPBYTECOUNTS = 279 # bytes counts for strips 
const TIFFTAG_MINSAMPLEVALUE = 280 # +minimum sample value 
const TIFFTAG_MAXSAMPLEVALUE = 281 # +maximum sample value 
const TIFFTAG_XRESOLUTION = 282 # pixels/resolution in x 
const TIFFTAG_YRESOLUTION = 283 # pixels/resolution in y 
const TIFFTAG_PLANARCONFIG = 284 # storage organization 
const   PLANARCONFIG_CONTIG = 1 # single image plane 
const   PLANARCONFIG_SEPARATE = 2 # separate planes of data 
const TIFFTAG_PAGENAME = 285 # page name image is from 
const TIFFTAG_XPOSITION = 286 # x page offset of image lhs 
const TIFFTAG_YPOSITION = 287 # y page offset of image lhs 
const TIFFTAG_FREEOFFSETS = 288 # +byte offset to free block 
const TIFFTAG_FREEBYTECOUNTS = 289 # +sizes of free blocks 
const TIFFTAG_GRAYRESPONSEUNIT = 290 # $gray scale curve accuracy 
const   GRAYRESPONSEUNIT_10S = 1 # tenths of a unit 
const   GRAYRESPONSEUNIT_100S = 2 # hundredths of a unit 
const   GRAYRESPONSEUNIT_1000S = 3 # thousandths of a unit 
const   GRAYRESPONSEUNIT_10000S = 4 # ten-thousandths of a unit 
const   GRAYRESPONSEUNIT_100000S = 5 # hundred-thousandths 
const TIFFTAG_GRAYRESPONSECURVE = 291 # $gray scale response curve 
const TIFFTAG_GROUP3OPTIONS = 292 # 32 flag bits 
const TIFFTAG_T4OPTIONS = 292 # TIFF 6.0 proper name alias 
const   GROUP3OPT_2DENCODING = 0x1 # 2-dimensional coding 
const   GROUP3OPT_UNCOMPRESSED = 0x2 # data not compressed 
const   GROUP3OPT_FILLBITS = 0x4 # fill to byte boundary 
const TIFFTAG_GROUP4OPTIONS = 293 # 32 flag bits 
const TIFFTAG_T6OPTIONS = 293 # TIFF 6.0 proper name 
const   GROUP4OPT_UNCOMPRESSED = 0x2 # data not compressed 
const TIFFTAG_RESOLUTIONUNIT = 296 # units of resolutions 
const   RESUNIT_NONE = 1 # no meaningful units 
const   RESUNIT_INCH = 2 # english 
const   RESUNIT_CENTIMETER = 3 # metric 
const TIFFTAG_PAGENUMBER = 297 # page numbers of multi-page 
const TIFFTAG_COLORRESPONSEUNIT = 300 # $color curve accuracy 
const   COLORRESPONSEUNIT_10S = 1 # tenths of a unit 
const   COLORRESPONSEUNIT_100S = 2 # hundredths of a unit 
const   COLORRESPONSEUNIT_1000S = 3 # thousandths of a unit 
const   COLORRESPONSEUNIT_10000S = 4 # ten-thousandths of a unit 
const   COLORRESPONSEUNIT_100000S = 5 # hundred-thousandths 
const TIFFTAG_TRANSFERFUNCTION = 301 # !colorimetry info 
const TIFFTAG_SOFTWARE = 305 # name & release 
const TIFFTAG_DATETIME = 306 # creation date and time 
const TIFFTAG_ARTIST = 315 # creator of image 
const TIFFTAG_HOSTCOMPUTER = 316 # machine where created 
const TIFFTAG_PREDICTOR = 317 # prediction scheme w/ LZW 
const   PREDICTOR_NONE = 1 # no prediction scheme used 
const   PREDICTOR_HORIZONTAL = 2 # horizontal differencing 
const   PREDICTOR_FLOATINGPOINT = 3 # floating point predictor 
const TIFFTAG_WHITEPOINT = 318 # image white point 
const TIFFTAG_PRIMARYCHROMATICITIES = 319 # !primary chromaticities 
const TIFFTAG_COLORMAP = 320 # RGB map for pallette image 
const TIFFTAG_HALFTONEHINTS = 321 # !highlight+shadow info 
const TIFFTAG_TILEWIDTH = 322 # !tile width in pixels 
const TIFFTAG_TILELENGTH = 323 # !tile height in pixels 
const TIFFTAG_TILEOFFSETS = 324 # !offsets to data tiles 
const TIFFTAG_TILEBYTECOUNTS = 325 # !byte counts for tiles 
const TIFFTAG_BADFAXLINES = 326 # lines w/ wrong pixel count 
const TIFFTAG_CLEANFAXDATA = 327 # regenerated line info 
const   CLEANFAXDATA_CLEAN = 0 # no errors detected 
const   CLEANFAXDATA_REGENERATED = 1 # receiver regenerated lines 
const   CLEANFAXDATA_UNCLEAN = 2 # uncorrected errors exist 
const TIFFTAG_CONSECUTIVEBADFAXLINES = 328 # max consecutive bad lines 
const TIFFTAG_SUBIFD = 330 # subimage descriptors 
const TIFFTAG_INKSET = 332 # !inks in separated image 
const   INKSET_CMYK = 1 # !cyan-magenta-yellow-black color 
const   INKSET_MULTIINK = 2 # !multi-ink or hi-fi color 
const TIFFTAG_INKNAMES = 333 # !ascii names of inks 
const TIFFTAG_NUMBEROFINKS = 334 # !number of inks 
const TIFFTAG_DOTRANGE = 336 # !0% and 100% dot codes 
const TIFFTAG_TARGETPRINTER = 337 # !separation target 
const TIFFTAG_EXTRASAMPLES = 338 # !info about extra samples 
const   EXTRASAMPLE_UNSPECIFIED = 0 # !unspecified data 
const   EXTRASAMPLE_ASSOCALPHA = 1 # !associated alpha data 
const   EXTRASAMPLE_UNASSALPHA = 2 # !unassociated alpha data 
const TIFFTAG_SAMPLEFORMAT = 339 # !data sample format 
const   SAMPLEFORMAT_UINT = 1 # !unsigned integer data 
const   SAMPLEFORMAT_INT = 2 # !signed integer data 
const   SAMPLEFORMAT_IEEEFP = 3 # !IEEE floating point data 
const   SAMPLEFORMAT_VOID = 4 # !untyped data 
const   SAMPLEFORMAT_COMPLEXINT = 5 # !complex signed int 
const   SAMPLEFORMAT_COMPLEXIEEEFP = 6 # !complex ieee floating 
const TIFFTAG_SMINSAMPLEVALUE = 340 # !variable MinSampleValue 
const TIFFTAG_SMAXSAMPLEVALUE = 341 # !variable MaxSampleValue 
const TIFFTAG_CLIPPATH = 343 # %ClipPath [Adobe TIFF technote 2] 
const TIFFTAG_XCLIPPATHUNITS = 344 # %XClipPathUnits [Adobe TIFF technote 2] 
const TIFFTAG_YCLIPPATHUNITS = 345 # %YClipPathUnits [Adobe TIFF technote 2] 
const TIFFTAG_INDEXED = 346 # %Indexed [Adobe TIFF Technote 3] 
const TIFFTAG_JPEGTABLES = 347 # %JPEG table stream 
const TIFFTAG_OPIPROXY = 351 # %OPI Proxy [Adobe TIFF technote] 
#  Tags 400-435 are from the TIFF/FX spec 
const TIFFTAG_GLOBALPARAMETERSIFD = 400 # ! 
const TIFFTAG_PROFILETYPE = 401 # ! 
const   PROFILETYPE_UNSPECIFIED = 0 # ! 
const   PROFILETYPE_G3_FAX = 1 # ! 
const TIFFTAG_FAXPROFILE = 402 # ! 
const   FAXPROFILE_S = 1 # !TIFF/FX FAX profile S 
const   FAXPROFILE_F = 2 # !TIFF/FX FAX profile F 
const   FAXPROFILE_J = 3 # !TIFF/FX FAX profile J 
const   FAXPROFILE_C = 4 # !TIFF/FX FAX profile C 
const   FAXPROFILE_L = 5 # !TIFF/FX FAX profile L 
const   FAXPROFILE_M = 6 # !TIFF/FX FAX profile LM 
const TIFFTAG_CODINGMETHODS = 403 # !TIFF/FX coding methods 
const   CODINGMETHODS_T4_1D = (1 << 1) # !T.4 1D 
const   CODINGMETHODS_T4_2D = (1 << 2) # !T.4 2D 
const   CODINGMETHODS_T6    = (1 << 3) # !T.6 
const   CODINGMETHODS_T85   = (1 << 4) # !T.85 JBIG 
const   CODINGMETHODS_T42   = (1 << 5) # !T.42 JPEG 
const   CODINGMETHODS_T43   = (1 << 6) # !T.43 colour by layered JBIG 
const TIFFTAG_VERSIONYEAR = 404 # !TIFF/FX version year 
const TIFFTAG_MODENUMBER = 405 # !TIFF/FX mode number 
const TIFFTAG_DECODE = 433 # !TIFF/FX decode 
const TIFFTAG_IMAGEBASECOLOR = 434 # !TIFF/FX image base colour 
const TIFFTAG_T82OPTIONS = 435 # !TIFF/FX T.82 options 
#
# Tags 512-521 are obsoleted by Technical Note #2 which specifies a
# revised JPEG-in-TIFF scheme.
#
const TIFFTAG_JPEGPROC = 512 # !JPEG processing algorithm 
const   JPEGPROC_BASELINE = 1 # !baseline sequential 
const   JPEGPROC_LOSSLESS = 14 # !Huffman coded lossless 
const TIFFTAG_JPEGIFOFFSET = 513 # !pointer to SOI marker 
const TIFFTAG_JPEGIFBYTECOUNT = 514 # !JFIF stream length 
const TIFFTAG_JPEGRESTARTINTERVAL = 515 # !restart interval length 
const TIFFTAG_JPEGLOSSLESSPREDICTORS = 517 # !lossless proc predictor 
const TIFFTAG_JPEGPOINTTRANSFORM = 518 # !lossless point transform 
const TIFFTAG_JPEGQTABLES = 519 # !Q matrice offsets 
const TIFFTAG_JPEGDCTABLES = 520 # !DCT table offsets 
const TIFFTAG_JPEGACTABLES = 521 # !AC coefficient offsets 
const TIFFTAG_YCBCRCOEFFICIENTS = 529 # !RGB -> YCbCr transform 
const TIFFTAG_YCBCRSUBSAMPLING = 530 # !YCbCr subsampling factors 
const TIFFTAG_YCBCRPOSITIONING = 531 # !subsample positioning 
const   YCBCRPOSITION_CENTERED = 1 # !as in PostScript Level 2 
const   YCBCRPOSITION_COSITED = 2 # !as in CCIR 601-1 
const TIFFTAG_REFERENCEBLACKWHITE = 532 # !colorimetry info 
const TIFFTAG_STRIPROWCOUNTS = 559 # !TIFF/FX strip row counts 
const TIFFTAG_XMLPACKET = 700 # %XML packet [Adobe XMP Specification, January 2004 
const TIFFTAG_OPIIMAGEID = 32781 # %OPI ImageID [Adobe TIFF technote] 
#  tags 32952-32956 are private tags registered to Island Graphics 
const TIFFTAG_REFPTS = 32953 # image reference points 
const TIFFTAG_REGIONTACKPOINT = 32954 # region-xform tack point 
const TIFFTAG_REGIONWARPCORNERS = 32955 # warp quadrilateral 
const TIFFTAG_REGIONAFFINE = 32956 # affine transformation mat 
#  tags 32995-32999 are private tags registered to SGI 
const TIFFTAG_MATTEING = 32995 # $use ExtraSamples 
const TIFFTAG_DATATYPE = 32996 # $use SampleFormat 
const TIFFTAG_IMAGEDEPTH = 32997 # z depth of image 
const TIFFTAG_TILEDEPTH = 32998 # z depth/data tile 
#  tags 33300-33309 are private tags registered to Pixar 

#
# TIFFTAG_PIXAR_IMAGEFULLWIDTH and TIFFTAG_PIXAR_IMAGEFULLLENGTH
# are set when an image has been cropped out of a larger image.  
# They reflect the size of the original uncropped image.
# The TIFFTAG_XPOSITION and TIFFTAG_YPOSITION can be used
# to determine the position of the smaller image in the larger one.
#

const TIFFTAG_PIXAR_IMAGEFULLWIDTH = 33300 # full image size in x 
const TIFFTAG_PIXAR_IMAGEFULLLENGTH = 33301 # full image size in y 

#
# Tags 33302-33306 are used to identify special image modes and data
# used by Pixar's texture formats.
#

const TIFFTAG_PIXAR_TEXTUREFORMAT = 33302 # texture map format 
const TIFFTAG_PIXAR_WRAPMODES = 33303 # s & t wrap modes 
const TIFFTAG_PIXAR_FOVCOT = 33304 # cotan(fov) for env. maps 
const TIFFTAG_PIXAR_MATRIX_WORLDTOSCREEN = 33305
const TIFFTAG_PIXAR_MATRIX_WORLDTOCAMERA = 33306 # tag 33405 is a private tag registered to Eastman Kodak 
const TIFFTAG_WRITERSERIALNUMBER = 33405 # device serial number 
#  tag 33432 is listed in the 6.0 spec w/ unknown ownership 
const TIFFTAG_COPYRIGHT = 33432 # copyright string 
#  IPTC TAG from RichTIFF specifications 
const TIFFTAG_RICHTIFFIPTC = 33723 # 34016-34029 are reserved for ANSI IT8 TIFF/IT <dkelly@apago.com) 
const TIFFTAG_IT8SITE = 34016 # site name 
const TIFFTAG_IT8COLORSEQUENCE = 34017 # color seq. [RGB,CMYK,etc] 
const TIFFTAG_IT8HEADER = 34018 # DDES Header 
const TIFFTAG_IT8RASTERPADDING = 34019 # raster scanline padding 
const TIFFTAG_IT8BITSPERRUNLENGTH = 34020 # # of bits in short run 
const TIFFTAG_IT8BITSPEREXTENDEDRUNLENGTH = 34021 # # of bits in long run 
const TIFFTAG_IT8COLORTABLE = 34022 # LW colortable 
const TIFFTAG_IT8IMAGECOLORINDICATOR = 34023 # BP/BL image color switch 
const TIFFTAG_IT8BKGCOLORINDICATOR = 34024 # BP/BL bg color switch 
const TIFFTAG_IT8IMAGECOLORVALUE = 34025 # BP/BL image color value 
const TIFFTAG_IT8BKGCOLORVALUE = 34026 # BP/BL bg color value 
const TIFFTAG_IT8PIXELINTENSITYRANGE = 34027 # MP pixel intensity value 
const TIFFTAG_IT8TRANSPARENCYINDICATOR = 34028 # HC transparency switch 
const TIFFTAG_IT8COLORCHARACTERIZATION = 34029 # color character. table 
const TIFFTAG_IT8HCUSAGE = 34030 # HC usage indicator 
const TIFFTAG_IT8TRAPINDICATOR = 34031 # Trapping indicator (untrapped=0, trapped=1) 
const TIFFTAG_IT8CMYKEQUIVALENT = 34032 # CMYK color equivalents 
#  tags 34232-34236 are private tags registered to Texas Instruments 
const TIFFTAG_FRAMECOUNT = 34232 # Sequence Frame Count 
#  tag 34377 is private tag registered to Adobe for PhotoShop 
const TIFFTAG_PHOTOSHOP = 34377 # tags 34665, 34853 and 40965 are documented in EXIF specification 
const TIFFTAG_EXIFIFD = 34665 # Pointer to EXIF private directory 
#  tag 34750 is a private tag registered to Adobe? 
const TIFFTAG_ICCPROFILE = 34675 # ICC profile data 
const TIFFTAG_IMAGELAYER = 34732 # !TIFF/FX image layer information 
#  tag 34750 is a private tag registered to Pixel Magic 
const TIFFTAG_JBIGOPTIONS = 34750 # JBIG options 
const TIFFTAG_GPSIFD = 34853 # Pointer to GPS private directory 
#  tags 34908-34914 are private tags registered to SGI 
const TIFFTAG_FAXRECVPARAMS = 34908 # encoded Class 2 ses. parms 
const TIFFTAG_FAXSUBADDRESS = 34909 # received SubAddr string 
const TIFFTAG_FAXRECVTIME = 34910 # receive time (secs) 
const TIFFTAG_FAXDCS = 34911 # encoded fax ses. params, Table 2/T.30 
#  tags 37439-37443 are registered to SGI <gregl@sgi.com> 
const TIFFTAG_STONITS = 37439 # Sample value to Nits 
#  tag 34929 is a private tag registered to FedEx 
const TIFFTAG_FEDEX_EDR = 34929 # unknown use 
const TIFFTAG_INTEROPERABILITYIFD = 40965 # Pointer to Interoperability private directory 
#  Adobe Digital Negative (DNG) format tags 
const TIFFTAG_DNGVERSION = 50706 # &DNG version number 
const TIFFTAG_DNGBACKWARDVERSION = 50707 # &DNG compatibility version 
const TIFFTAG_UNIQUECAMERAMODEL = 50708 # &name for the camera model 
const TIFFTAG_LOCALIZEDCAMERAMODEL = 50709 # &localized camera model name 
const TIFFTAG_CFAPLANECOLOR = 50710 # &CFAPattern->LinearRaw space mapping 
const TIFFTAG_CFALAYOUT = 50711 # &spatial layout of the CFA 
const TIFFTAG_LINEARIZATIONTABLE = 50712 # &lookup table description 
const TIFFTAG_BLACKLEVELREPEATDIM = 50713 # &repeat pattern size for the BlackLevel tag 
const TIFFTAG_BLACKLEVEL = 50714 # &zero light encoding level 
const TIFFTAG_BLACKLEVELDELTAH = 50715 # &zero light encoding level differences (columns) 
const TIFFTAG_BLACKLEVELDELTAV = 50716 # &zero light encoding level differences (rows) 
const TIFFTAG_WHITELEVEL = 50717 # &fully saturated encoding level 
const TIFFTAG_DEFAULTSCALE = 50718 # &default scale factors 
const TIFFTAG_DEFAULTCROPORIGIN = 50719 # &origin of the final image area 
const TIFFTAG_DEFAULTCROPSIZE = 50720 # &size of the final image area 
const TIFFTAG_COLORMATRIX1 = 50721 # &XYZ->reference color space transformation matrix 1 
const TIFFTAG_COLORMATRIX2 = 50722 # &XYZ->reference color space transformation matrix 2 
const TIFFTAG_CAMERACALIBRATION1 = 50723 # &calibration matrix 1 
const TIFFTAG_CAMERACALIBRATION2 = 50724 # &calibration matrix 2 
const TIFFTAG_REDUCTIONMATRIX1 = 50725 # &dimensionality reduction matrix 1 
const TIFFTAG_REDUCTIONMATRIX2 = 50726 # &dimensionality reduction matrix 2 
const TIFFTAG_ANALOGBALANCE = 50727 # &gain applied the stored raw values
const TIFFTAG_ASSHOTNEUTRAL = 50728 # &selected white balance in linear reference space 
const TIFFTAG_ASSHOTWHITEXY = 50729 # &selected white balance in x-y chromaticity coordinates 
const TIFFTAG_BASELINEEXPOSURE = 50730 # &how much to move the zero point 
const TIFFTAG_BASELINENOISE = 50731 # &relative noise level 
const TIFFTAG_BASELINESHARPNESS = 50732 # &relative amount of sharpening 
const TIFFTAG_BAYERGREENSPLIT = 50733 # &how closely the values of the green pixels in the blue/green rows track the values of the green pixels in the red/green rows 
const TIFFTAG_LINEARRESPONSELIMIT = 50734 # &non-linear encoding range 
const TIFFTAG_CAMERASERIALNUMBER = 50735 # &camera's serial number 
const TIFFTAG_LENSINFO = 50736 # info about the lens 
const TIFFTAG_CHROMABLURRADIUS = 50737 # &chroma blur radius 
const TIFFTAG_ANTIALIASSTRENGTH = 50738 # &relative strength of the camera's anti-alias filter 
const TIFFTAG_SHADOWSCALE = 50739 # &used by Adobe Camera Raw 
const TIFFTAG_DNGPRIVATEDATA = 50740 # &manufacturer's private data 
const TIFFTAG_MAKERNOTESAFETY = 50741 # &whether the EXIF MakerNote tag is safe to preserve along with the rest of the EXIF data 
const TIFFTAG_CALIBRATIONILLUMINANT1 = 50778 # &illuminant 1 
const TIFFTAG_CALIBRATIONILLUMINANT2 = 50779 # &illuminant 2 
const TIFFTAG_BESTQUALITYSCALE = 50780 # &best quality multiplier 
const TIFFTAG_RAWDATAUNIQUEID = 50781 # &unique identifier for the raw image data 
const TIFFTAG_ORIGINALRAWFILENAME = 50827 # &file name of the original raw file 
const TIFFTAG_ORIGINALRAWFILEDATA = 50828 # &contents of the original raw file 
const TIFFTAG_ACTIVEAREA = 50829 # &active (non-masked) pixels of the sensor 
const TIFFTAG_MASKEDAREAS = 50830 # &list of coordinates of fully masked pixels 
const TIFFTAG_ASSHOTICCPROFILE = 50831 # &these two tags used to 
const TIFFTAG_ASSHOTPREPROFILEMATRIX = 50832 # map cameras's color space into ICC profile space 
const TIFFTAG_CURRENTICCPROFILE = 50833 # & 
const TIFFTAG_CURRENTPREPROFILEMATRIX = 50834 # & 
# tag 65535 is an undefined tag used by Eastman Kodak
const TIFFTAG_DCSHUESHIFTVALUES = 65535 # hue shift correction data 
const TIFFTAG_DCSGAMMA = 65554 # gamma value 
const TIFFTAG_DCSTOESHOULDERPTS = 65555 # toe & shoulder points 
const TIFFTAG_DCSCALIBRATIONFD = 65556 # calibration file desc 
# Note: quality level is on the ZLIB 1-9 scale. Default value is -1
const TIFFTAG_ZIPQUALITY = 65557 # compression quality level 
const TIFFTAG_PIXARLOGQUALITY = 65558 # PixarLog uses same scale 
# 65559 is allocated to Oceana Matrix <dev@oceana.com> 
const TIFFTAG_DCSCLIPRECTANGLE = 65559 # area of image to acquire 
const TIFFTAG_SGILOGDATAFMT = 65560 # SGILog user data format 
const SGILOGDATAFMT_FLOAT = 0 # IEEE float samples 
const SGILOGDATAFMT_16BIT = 1 # 16-bit samples 
const SGILOGDATAFMT_RAW = 2 # uninterpreted data 
const SGILOGDATAFMT_8BIT = 3 # 8-bit RGB monitor values 
const TIFFTAG_SGILOGENCODE = 65561 # SGILog data encoding control
const SGILOGENCODE_NODITHER = 0 # do not dither encoded values
const SGILOGENCODE_RANDITHER = 1 # randomly dither encd values 
const TIFFTAG_LZMAPRESET = 65562 # LZMA2 preset (compression level) 
const TIFFTAG_PERSAMPLE = 65563 # interface for per sample tags 
const PERSAMPLE_MERGED = 0 # present as a single value 
const PERSAMPLE_MULTI = 1 # present as multiple values 

#
# EXIF tags
#
const EXIFTAG_EXPOSURETIME = 33434 # Exposure time 
const EXIFTAG_FNUMBER = 33437 # F number 
const EXIFTAG_EXPOSUREPROGRAM = 34850 # Exposure program 
const EXIFTAG_SPECTRALSENSITIVITY = 34852 # Spectral sensitivity 
const EXIFTAG_ISOSPEEDRATINGS = 34855 # ISO speed rating 
const EXIFTAG_OECF = 34856 # Optoelectric conversion factor 
const EXIFTAG_EXIFVERSION = 36864 # Exif version 
const EXIFTAG_DATETIMEORIGINAL = 36867 # Date and time of original data generation 
const EXIFTAG_DATETIMEDIGITIZED = 36868 # Date and time of digital data generation 
const EXIFTAG_COMPONENTSCONFIGURATION = 37121 # Meaning of each component 
const EXIFTAG_COMPRESSEDBITSPERPIXEL = 37122 # Image compression mode 
const EXIFTAG_SHUTTERSPEEDVALUE = 37377 # Shutter speed 
const EXIFTAG_APERTUREVALUE = 37378 # Aperture 
const EXIFTAG_BRIGHTNESSVALUE = 37379 # Brightness 
const EXIFTAG_EXPOSUREBIASVALUE = 37380 # Exposure bias 
const EXIFTAG_MAXAPERTUREVALUE = 37381 # Maximum lens aperture 
const EXIFTAG_SUBJECTDISTANCE = 37382 # Subject distance 
const EXIFTAG_METERINGMODE = 37383 # Metering mode 
const EXIFTAG_LIGHTSOURCE = 37384 # Light source 
const EXIFTAG_FLASH = 37385 # Flash 
const EXIFTAG_FOCALLENGTH = 37386 # Lens focal length 
const EXIFTAG_SUBJECTAREA = 37396 # Subject area 
const EXIFTAG_MAKERNOTE = 37500 # Manufacturer notes 
const EXIFTAG_USERCOMMENT = 37510 # User comments 
const EXIFTAG_SUBSECTIME = 37520 # DateTime subseconds 
const EXIFTAG_SUBSECTIMEORIGINAL = 37521 # DateTimeOriginal subseconds 
const EXIFTAG_SUBSECTIMEDIGITIZED = 37522 # DateTimeDigitized subseconds 
const EXIFTAG_FLASHPIXVERSION = 40960 # Supported Flashpix version 
const EXIFTAG_COLORSPACE = 40961 # Color space information 
const EXIFTAG_PIXELXDIMENSION = 40962 # Valid image width 
const EXIFTAG_PIXELYDIMENSION = 40963 # Valid image height 
const EXIFTAG_RELATEDSOUNDFILE = 40964 # Related audio file 
const EXIFTAG_FLASHENERGY = 41483 # Flash energy 
const EXIFTAG_SPATIALFREQUENCYRESPONSE = 41484 # Spatial frequency response 
const EXIFTAG_FOCALPLANEXRESOLUTION = 41486 # Focal plane X resolution 
const EXIFTAG_FOCALPLANEYRESOLUTION = 41487 # Focal plane Y resolution 
const EXIFTAG_FOCALPLANERESOLUTIONUNIT = 41488 # Focal plane resolution unit 
const EXIFTAG_SUBJECTLOCATION = 41492 # Subject location 
const EXIFTAG_EXPOSUREINDEX = 41493 # Exposure index 
const EXIFTAG_SENSINGMETHOD = 41495 # Sensing method 
const EXIFTAG_FILESOURCE = 41728 # File source 
const EXIFTAG_SCENETYPE = 41729 # Scene type 
const EXIFTAG_CFAPATTERN = 41730 # CFA pattern 
const EXIFTAG_CUSTOMRENDERED = 41985 # Custom image processing 
const EXIFTAG_EXPOSUREMODE = 41986 # Exposure mode 
const EXIFTAG_WHITEBALANCE = 41987 # White balance 
const EXIFTAG_DIGITALZOOMRATIO = 41988 # Digital zoom ratio 
const EXIFTAG_FOCALLENGTHIN35MMFILM = 41989 # Focal length in 35 mm film 
const EXIFTAG_SCENECAPTURETYPE = 41990 # Scene capture type 
const EXIFTAG_GAINCONTROL = 41991 # Gain control 
const EXIFTAG_CONTRAST = 41992 # Contrast 
const EXIFTAG_SATURATION = 41993 # Saturation 
const EXIFTAG_SHARPNESS = 41994 # Sharpness 
const EXIFTAG_DEVICESETTINGDESCRIPTION = 41995 # Device settings description 
const EXIFTAG_SUBJECTDISTANCERANGE = 41996 # Subject distance range 
const EXIFTAG_IMAGEUNIQUEID = 42016 # Unique image ID 
