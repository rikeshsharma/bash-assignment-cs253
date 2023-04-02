#!/bin/bash
echo 
echo Enter the name of files
echo 
read -p 'Enter name of the first file (ex file1.txt): ' file1
read -p 'Enter name of the second file (ex file2.txt): ' file2

if [ -f $file1 ];then
    echo $file1 exists
else 
    echo $file1 does not exists
    exit
fi

if [ -f $file2 ];then
    echo $file2 exists
else 
    echo $file2 does not exists
    exit
fi

# while IFS= read -r linef1; do
#     echo "Text read from file: $linef1"
# done < $file1

echo
echo "Below are the common lines found : "
echo 

countf1=1

while IFS= read -r linef3 || [[ -n "$linef3" ]];do
    countf2=1;
    while IFS= read -r linef2 || [[ -n "$linef2" ]];do
        if [ "$linef3" = "$linef2" ];then
            echo "$linef3         : is common [at line number $countf1 in $file1 and $countf2 in $file2]" 
        fi
        ((countf2++))
    done < "$file2"
    ((countf1++))
done < "$file1"
