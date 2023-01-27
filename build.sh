#!/bin/bash

#creates cv.pdf
echo "building cv.pdf"
pdflatex cv &> /dev/null

echo "generating jpg preview from pdf"
convert -density 200 -append cv.pdf -quality 85 preview/cv.jpg  &> /dev/null

echo "generated file sizes"
du -sh cv.pdf
du -sh preview/cv.jpg
echo "removing temporary files"
#removes left-over temporary build files
bash clean.sh &> /dev/null

