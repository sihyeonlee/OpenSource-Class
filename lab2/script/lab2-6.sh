#!/bin/sh

folder_name=$1

if [ ! -d $folder_name ]; then
    mkdir $folder_name
fi

cd $folder_name

for fname in file0.txt file1.txt file2.txt file3.txt file4.txt
do
    touch $fname
done

tar -cvf $folder_name.tar file0.txt file1.txt file2.txt file3.txt file4.txt

if [ ! -d $folder_name ]; then
    mkdir $folder_name
fi

mv $folder_name.tar $folder_name/$folder_name.tar

cd $folder_name

tar -xf $folder_name.tar