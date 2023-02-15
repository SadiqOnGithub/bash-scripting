#!/bin/bash

# create directories if they don't already exist
mkdir -p MSdocs
mkdir -p DocsConverted

# find all doc and docx files in the current directory and move them to MSdocs
find . -maxdepth 1 -type f \( -name "*.doc" -o -name "*.docx" \) -exec mv {} ./MSdocs \;

# convert all doc and docx files in MSdocs to pdf and move them to DocsConverted
for file in MSdocs/*.doc MSdocs/*.docx; do
    filename=$(basename "$file")
    extension="${filename##*.}"
    filename="${filename%.*}"
		unoconv -f pdf "$file"
    # libreoffice --headless --convert-to pdf --outdir ./DocsConverted "$file"
    mv "./MSdocs/$filename.pdf" "./DocsConverted/$filename.pdf"
done
