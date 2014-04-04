#!/bin/sh 
find . -name "*html" | while read FILE 
do 
echo "Converting $FILE to ${FILE%.*}.txt"
pandoc -f html -t markdown -s --atx-headers "$FILE" -o "${FILE%.*}".txt
done