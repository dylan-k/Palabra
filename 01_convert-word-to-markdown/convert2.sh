#!/bin/sh 
find . -name "*html" | while read FILE 
do 
pandoc -t markdown_github --atx-headers "$FILE" -o "${FILE%.*}".txt
done