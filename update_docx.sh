#!/bin/bash


wget 'https://docs.google.com/document/d/1DjnPJ1LgovVYeAyODcjUpwpJN1D-WLU4TErzFhrzbO0/export?format=docx&id=1DjnPJ1LgovVYeAyODcjUpwpJN1D-WLU4TErzFhrzbO0&token=AC4w5Vg9MP-Sy2BN8L2QqJRr_SEicXH_qg%3A1397824212594' -O '服務建議書.docx'

sleep 1

DATE=$(date +%Y-%m-%d\ %H:%M:%S)
#echo $DATE
git commit -a -m "update at $DATE"
git push

