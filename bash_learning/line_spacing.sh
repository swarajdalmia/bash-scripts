#!/bin/bash

add_blank_lines(){
# the function adds 2 blank lines between each of the input lines 

# ask the user to enter the file path
read -p "Enter the location of the file(from $HOME) that you want to increase the spacing of: ~/" filepath

# checks if an input was provided 
if [[ -z $filepath ]]; then
	echo "No input entered."
	return
else
	# check if the file path exists
	if [[ -f $HOME/$filepath ]]; then
		# read the file andi print it to stdout with spacing between each line 
		# -r prevents a backslash escapes from being interpreted 
		# IFS= prevent leading/trailing whitespace from being trimmed
		echo "File being read. The output will be  printed next."
		while IFS= read -r line
		do
  			echo  "$line"
			echo
			echo
		done < "$HOME/$filepath"
	else
		echo "File $filepath does not exist."
	fi
fi
}

remove_blank_lines(){
# the function removes all the black lines from a file

# ask the user to enter the file path
read -p "Enter the location of the file(from $HOME) that you want to increase the spacing of: ~/" filepath

# checks if an input was provided 
if [[ -z $filepath ]]; then
	echo "No input entered."
	return
else
	# check if the file path exists
	if [[ -f $HOME/$filepath ]]; then
		# read the file andi print it to stdout with spacing between each line 
		# -r prevents a backslash escapes from being interpreted 
		# IFS= prevent leading/trailing whitespace from being trimmed
		echo "File being read. The output will be  printed next."
		while IFS= read -r line
		do
  		    if [[ ! -z "${line// }" ]]; then  # check if the line contains only blanks or spaces. ${var/pattern/string} replaces the first longest match of pattern with string. When pattern starts with / (as above) then it replaces all the matches. Because the replacement is empty, we can omit the final / and the string value        
                	echo  "$line"
                    fi
		done < "$HOME/$filepath"
	else
		echo "File $filepath does not exist."
	fi
fi

}

remove_blank_lines


