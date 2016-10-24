#!/bin/bash
# convert dvi file from latex-beamer to pdf
# usage: 'convert_to_pdf.sh TeXfile-basename'
# will create TeXfile-basename.pdf from TeXfile-basename.dvi

title=$1
dvips -O 0,91pt -T 273pt,364pt $title.dvi -o $title.ps
# dvips -O 91,0pt -T 364pt,273pt $title.dvi -o $title.ps
gs -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -dDEVICEWIDTHPOINTS=363 -dDEVICEHEIGHTPOINTS=272 -sOutputFile=$title.pdf -c .setpdfwrite -f $title.ps
