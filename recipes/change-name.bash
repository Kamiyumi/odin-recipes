#Changes the names of files in a folder to add �recipe'in front
#Run in the folder of the files appended by *.html or *
#Example: bash change-name.bash *.html or *

#!/bin/bash
recipe_var="recipe"
html_var=".html"
counter=0

for filename in "$@"
do
	if [[ "$filename" == *$recipe_var* ]]; then
		echo "Name of $filename already starts with recipe"

	elif [[ "$filename" != *$html_var ]]; then
		echo "Name of $filename doesn't ends with .html"
		
	else
		echo "Changing name of $filename to recipe-$filename"
		mv $filename "recipe-$filename"
		counter=$((counter+1))
	fi
done

echo "All files have handled"
echo "Number of files renamed: $counter"
