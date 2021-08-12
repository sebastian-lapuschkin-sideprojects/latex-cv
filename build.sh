#!/bin/bash

#creates cv.pdf
echo "building cv.pdf"
pdflatex cv &> /dev/null

echo "generating png preview from pdf"
convert -density 200 -append cv.pdf -quality 85 preview/cv.png  &> /dev/null

echo "removing temporary files"
#removes left-over temporary build files
bash clean.sh &> /dev/null

