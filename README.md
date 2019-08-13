## Concise and Latex-based CV

Building the CV as pdf: Simply call the provided `build.sh`, which almost silently compiles the `tex` source files to `pdf` and cleans up any temporary files:

```
# calling this builds cv.pdf and renders a jpg preview from the pdf (for github)
bash build.sh

# above call is equivalent to
pdflatex cv
convert -density 200 -append cv.pdf -quality 85 preview/cv.jpg 
rm *.sometmpfileextension
rm *.othertmpfileextension
...
```
Click here to view the [cv.pdf](cv.pdf)

Credits for the original CV layout go to [https://github.com/cies/resume](https://github.com/cies/resume)
