# Concise and Latex-based CV

Building the CV as pdf: Simply call the provided `build.sh`, which almost silently compiles the `tex` source files to `pdf` and cleans up any temporary files:

```
# calling this builds cv.pdf
bash build.sh

# above call is equivalent to
pdflatex cv
rm *.sometmpfileextension
rm *.othertmpfileextension
...
```
Click here to view the [cv.pdf](cv.pdf)

Credits for the original CV layout go to [https://github.com/cies/resume](https://github.com/cies/resume)
