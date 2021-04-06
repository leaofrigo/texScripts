# crop eps
clear
echo ""
echo "Removing old files"
echo ""
rm -rf *~ *.aux *.log *.dvi *.ps *.bbl *.blg *.out *.snm *.toc *.nav *.lof *.lot *.pfg *.pdf *.epsi
echo ""
echo "Preparing figures"
echo ""
for file in *.eps
do
  echo $file
  epspdf $file
done

#for file in *.pdf
#do
#  echo $file
#  pdf2ps $file
#done

#for file in *.ps
#do
#  echo $file
#  ps2epsi $file
#done

rm -rf *~ *.aux *.log *.dvi *.ps *.bbl *.blg *.out *.snm *.toc *.nav *.lof *.lot *.pfg *.eps

