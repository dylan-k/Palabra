#!/bin/sh 
FILES="*.docx"
for FILE in "$FILES"; 
	do textutil -convert html $FILE 
done