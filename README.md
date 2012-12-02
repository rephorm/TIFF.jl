tiff.jl
=======

TIFF image file support for Julia

This is in very early alpha stages. The API *will* change.

Currently, only uncompressed images are supported, and palettes are ignored.
Usage
-----

Load the first image in the file into an array:

    load("tiff")
    img = tiff_imread("file.tif")

