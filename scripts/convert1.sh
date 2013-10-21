#!/bin/sh 
FILES="*.doc"
for FILE in "$FILES"; 
	do textutil -convert html $FILE 
done