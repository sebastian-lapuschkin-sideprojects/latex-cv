#!/bin/bash

#creates cv.pdf
echo "building cv.pdf"
pdflatex cv &> /dev/null

echo "removing temporary files"
#removes left-over temporary build files
bash clean.sh &> /dev/null

