#!/bin/sh
folder_name=$1

if [ ! -d $folder_name ]; then
    mkdir $folder_name
fi

cd $folder_name

for fname in file0.txt file1.txt file2.txt file3.txt file4.txt
do
    touch $fname
    mkdir "${fname%.*}"
    cmd="ln -s $fname ${fname%.*}"
    eval $cmd
done
