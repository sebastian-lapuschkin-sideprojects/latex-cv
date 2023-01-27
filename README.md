## Concise and Latex-based CV

Building the CV as pdf: Simply call the provided `build.sh`, which almost silently compiles the `tex` source files to `pdf` and cleans up any temporary files (note that failures are also silent):

```
#creates cv.pdf
echo "building cv.pdf"
pdflatex cv &> /dev/null

echo "generating jpg preview from pdf"
convert -density 200 -append cv.pdf -quality 85 -alpha remove -alpha off preview/cv.png   &> /dev/null

echo "generated file sizes"
du -sh cv.pdf
du -sh preview/cv.png
echo "removing temporary files"
#removes left-over temporary build files
bash clean.sh &> /dev/null
```

Credit for the original CV layout goes to [https://github.com/cies/resume](https://github.com/cies/resume)

Click here to download the [cv.pdf](cv.pdf) or have a look at a preview image below.

---

### Preview (PNG)

![preview/cv.jpg](preview/cv.png)


