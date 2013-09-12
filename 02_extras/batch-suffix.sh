# if you have a batch of files and they all have filenames like poem_01 for example, 
# here's a way to add .txt to the end of all those filenames

for file in poem_*
do
    mv "$file" "$file.txt"
done