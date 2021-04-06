#!/bin/bash

# Script to run the pdflatex and clear directory
# Remove old files
	rm -f  $(objects) rm -rf *~ *.aux *.log *.dvi *.ps *.bbl *.blg *.out *.snm *.toc *.nav *.lof *.lot *.pfg *.acn *.acr *.alg *.glg *.glo *.gls *.glsdefs *.ist *.slg *.sym *.sbl *.ttt *.fff
   	rm src/*.aux
	rm src/*.tex~
clear
echo ""
echo ""
echo "============Run PDF============"
echo ""
echo ""

spdf='.pdf'
stex='.tex'
saux='.aux'

	xelatex $1$stex;
	bibtex $1$saux;
	makeglossaries $1
	xelatex $1$stex;
	xelatex $1$stex;
	xelatex $1$stex;
# Remove old files
	rm -f  $(objects) rm -rf *~ *.aux *.log *.dvi *.ps *.bbl *.blg *.out *.snm *.toc *.nav *.lof *.lot *.pfg *.acn *.acr *.alg *.glg *.glo *.gls *.glsdefs *.ist *.slg *.sym *.sbl *.ttt *.fff
    	rm src/*.aux
	rm src/*.tex~
clear
echo ""
echo ""
echo "============Run PDF============"
echo ""
echo ""
echo ""
