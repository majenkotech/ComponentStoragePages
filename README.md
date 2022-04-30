This small script is designed to take a list of page description files (simple
text files) and generate insert pages for electronic component storage files.

Each page consists of up to 12 entries with up to 3 values (tab separated)
per line. The first entry is the MPN of the component, the second a short
description of the component (or the MPN again) and the third a longer textual
description of the component.

Each printed line consists of one or two lines of text plus a 2D "micropdf412"
barcode of the MPN.

If only 2 fields are specified in the file only one line of text is printed.

If only 1 field is specified in the file the MPN is printed in place of the second
(omitted) field.

If the second field is % the first field is automatically copied into its place.

Usage
-----

    mkpage [options and files]

Keywords on the command line are parsed in order and affect keywords following them.
Keywords may be one of:

* A filename (file.pag) which is used to generate a new page
* `left` - All following pages are shaped to fit on the left side of the folder
* `right` - All following pages are shaped to fit on the right side of the folder
* `blank` - Insert a blank page
* `output` - Set the output filename (omit the .pdf) - the next keyword is the output name

See the included `Makefile` for an example

The output is one PDF file with A4 pages in landscape with each page having two folder
inserts rendered.

Requirements
------------

* PHP (cli)
* A LaTeX engine (such as texlive)
* LaTeX "pstricks"
* LaTeX "tikz"
