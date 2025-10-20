#!/bin/bash

time {
#creates list of publications as standalone file
echo "building publications list"
pdflatex -jobname cv "\def\publicationsextra{1} \input{cv.tex}" &> /dev/null
pdftk cv.pdf cat 7-end output publications.pdf

#creates cv.pdf
echo "building cv.pdf proper"
pdflatex cv &> /dev/null

#creates cv-short.pdf
echo "building cv-short.pdf"
pdflatex -jobname cv-short "\def\shortcv{1} \input{cv.tex}"  &> /dev/null


# generates png previews of long and short CV as well as publications list.
echo "generating png preview from cv.pdf"
convert -density 200 -append cv.pdf -quality 85 -alpha remove -alpha off preview/cv.png   &> /dev/null

echo "generating png preview from cv-short.pdf"
convert -density 200 -append cv-short.pdf -quality 85 -alpha remove -alpha off preview/cv-short.png   &> /dev/null

echo "generating png preview from publications.pdf"
convert -density 200 -append publications.pdf -quality 85 -alpha remove -alpha off preview/publications.png &> /dev/null


echo "file sizes"
du -sh *.pdf
du -sh preview/*.png

echo "removing temporary files"
#removes left-over temporary build files
bash clean.sh &> /dev/null

} # end of time keeping