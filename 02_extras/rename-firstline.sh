#A shell script that will rename all the text files in a directory
#each file will be named with the first line of text from that file

for file in *
do
   # Avoid renaming diretories!
   if [ -f "$file" ]
   then
       newname=`head -1 $file`
       if [ -f "$newname" ]
       then
              echo "Cannot rename $file to $newname - file already exists"
       else
              mv "$file" "$newname"
       fi
   fi
done