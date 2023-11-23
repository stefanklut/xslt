#!/bin/bash

input_folder_path=/home/stefan/Documents/datasets/margrietGT/page
output_folder_path=/tmp/test

mkdir $output_folder_path  # Create an output folder if it doesn't exist
for file in $input_folder_path/*.xml; do
    filename=$(basename "$file")
    xsltproc -o "$output_folder_path/$filename" transform.xslt "$file"
    echo "Transformed $filename and saved to $output_folder_path/$filename"
done

