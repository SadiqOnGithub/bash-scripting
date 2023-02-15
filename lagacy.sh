#!/bin/bash

# get the present dir and parent dir
currnDir=$(pwd)
echo "CurrnDir: $currnDir"
parentDirName=$(dirname "$currnDir")
echo "ParentDirName: $parentDirName"


# Set the source and destination directories
src_dir="${currnDir}"
# echo "src_dir : $src_dir"
mkdir -p "${parentDirName}/sorted-cvs"
dst_dir="${parentDirName}/sorted-cvs"
# echo "dst_dir : $dst_dir"


# Create the destination directories if they don't exist
mkdir -p "${dst_dir}/civil_eng"
mkdir -p "${dst_dir}/mechanical_eng"
mkdir -p "${dst_dir}/software_eng"

# Loop through the files in the source directory
for file in "${src_dir}"/*
do
    # Get the file extension
    ext="${file##*.}"
		
    # Check if the file is a PDF
    if [ "${ext,,}" = "pdf" ]
    then
        # Get the file name without the extension
        name="${file%.*}"
				filename=$(basename "$file")
				echo "Filename: $filename"
				dirname=$(dirname "$file")
				echo "Dirname: $dirname"


        # Check the contents of the PDF for keywords
        if pdftotext "${file}" - | grep -i "civil engineering"
        then
            # Move the file to the civil engineering directory
            echo "this is name: ${name}"
            echo "this is ext: ${ext}"
            echo "this is file: ${file}"
            mv "${file}" "./Civil_Engin/${filename}.pdf"
        # elif pdftotext "${file}" - | grep -qi "mechanical engineering"
        # then
        #     # Move the file to the mechanical engineering directory
        #     mv "${file}" "${dst_dir}/mechanical_eng/${name}.pdf"
        # elif pdftotext "${file}" - | grep -qi "software engineering"
        # then
        #     # Move the file to the software engineering directory
        #     mv "${file}" "${dst_dir}/software_eng/${name}.pdf"
        # else
        #     # Move the file to a default directory
        #     mv "${file}" "${dst_dir}/misc/${name}.pdf"
        fi
    fi
done