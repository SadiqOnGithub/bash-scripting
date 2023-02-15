

dirToMake="./Geotect"
mkdir -p "${dirToMake}"


for file in *; do

		ext="${file##*.}"
		# echo "$file"
		
    if [ "${ext,,}" = "pdf" ]; then

				if pdftotext "${file}" - | grep -i "geotech"; then


				echo "$file"
				echo "==========================================="
				# enable to sort the resume
				# mv "${file}" "${dirToMake}/${file}"
				fi
		fi
done