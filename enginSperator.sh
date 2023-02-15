#!/bin/bash

# create the "Civil Engineers" directory if it doesn't already exist
mkdir -p "Civil Engineers"

# find all PDF files in the current directory that contain "civil engin" (case-insensitive) and move them to the "Civil Engineers" directory
find . -maxdepth 1 -type f -name "*.pdf" -exec grep -li -i "civil engin" {} + | xargs -I{} mv {} "./Civil Engineers/"
