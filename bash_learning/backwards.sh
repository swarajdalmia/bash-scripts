#!/bin/bash

each_line(){
    # prints the bash file as is, line by line
    filename="$1"
    func=$2
    line_num=0
    while read -r line
    do
        line_num=$((line_num + 1))
	$func "$line" $line_num
    done < "$filename"
}

fputs(){
	echo "$2: $1"
}

reverse(){
    # reverses the file, line by line
    filename="$1"
    awk '{a[i++]=$0}END{for(j=i-1;j>=0;j--)print a[j];}' "$filename"

}

# single quotes dont interpolate anything double quotes do, including \ escapes
# double quotes are necessary wherever a list of words or a pattern is expected
# the same reason why the portions in doubles quotes are in them in the func each_line()
# each_line "$BASH_SOURCE" fputs

reverse "$BASH_SOURCE"
