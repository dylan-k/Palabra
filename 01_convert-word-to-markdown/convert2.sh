#!/bin/sh 
find . -name "*html" | while read FILE 
do 
pandoc "$FILE" -o "${FILE%.*}".md
done

