#!/bin/bash
cd "$(dirname "$0")"

git pull
sleep 1
wget 'https://docs.google.com/document/d/1DjnPJ1LgovVYeAyODcjUpwpJN1D-WLU4TErzFhrzbO0/export?format=docx&id=1DjnPJ1LgovVYeAyODcjUpwpJN1D-WLU4TErzFhrzbO0' -O '服務建議書.docx'
wget 'https://docs.google.com/document/d/1DjnPJ1LgovVYeAyODcjUpwpJN1D-WLU4TErzFhrzbO0/export?format=txt&id=1DjnPJ1LgovVYeAyODcjUpwpJN1D-WLU4TErzFhrzbO0' -O '服務建議書.txt'


sleep 1

DATE=$(date +%Y-%m-%d\ %H:%M:%S)
#echo $DATE
git commit -a -m "update at $DATE"
git push

