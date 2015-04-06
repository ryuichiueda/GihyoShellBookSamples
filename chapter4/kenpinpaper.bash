#!/bin/bash -vx

cat << FIN > .html
<!--ONEPAGE-->
%6 <!DOCTYPE html>
%6 <html>
%6 <head>
%6     <meta charset="utf-8" />
%6     <title>%2 %3</title>
%6 </head>
%6 <body>
%6     <p>%2</p><p>%3</p><p>%4</p>
%6     <img src="qr%5.png" />
%6     <img src="isbn%6.png" />
%6 </body>
%6 </html>
<!--ONEPAGE-->
FIN

mojihame -lONEPAGE .html ./usppub |
awk '{f=$1".html";gsub(/^[0-9]* /,"",$0);print $0 > f}'

cat << 'FIN' > .sub
qrencode -o "qr$1.png" "http://www.amazon.co.jp/dp/$1"
barcode -E <<< "$2" | convert - "isbn$2.png"
xvfb-run wkhtmltopdf "$2.html" "$2.pdf"
FIN

self 5 6 ./usppub | xargs -n 2 bash .sub

rm *.html .sub *.png
