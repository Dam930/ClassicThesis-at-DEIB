#!/bin/bash

for f in *.tex
do
    if [ $f != "standalone.tex" ] 
    then
        cp standalone.tex tmp.tex
        sed -i 's/XXXX/'${f}'/g' tmp.tex
        pdflatex tmp.tex
        #pdflatex tmp.tex
        cp tmp.pdf ${f::-4}.pdf
        rm tmp.*
    fi
done
