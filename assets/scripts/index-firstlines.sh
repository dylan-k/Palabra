#!/bin/sh
# useful for poets to create an index of first lines
# this will create an index of all the first lines in all the text files
# within the current directory. It will save a list of those lines to a
# file named firstlines.index. If, for some reason, your first lines
# don't appear on the first line of the file, then change -n 1 to another
# number, so if the texts begin on the fourth line of the file use -n 4
for i in *.txt
do
   head -n 1 $i >> firstlines.index
done