#!/bin/bash

main(){
# lists all the files in the subdirectory recursively and saves it
ls -R >> rec_list_file 

# read the path entered. Din't accept entire path from "~", cause there there were some issues with "~" expansion and i couldn't find a way to prevent it.
read -p "Enter path from HOME(including file name) : ~/" in_path

# compressed the file and saves it in the desired location
zip file_list.zip rec_list_file
mv file_list.zip $HOME/$in_path
echo $p

# removed the file without asking for prompt
rm -f rec_list_file
}

main

