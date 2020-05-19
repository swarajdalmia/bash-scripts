#!/bin/bash

# zip into "archive.zip" the files that have been modified in the last  1 day, which have CPR in their file name. 

find "$HOME/Desktop" -mtime -1 grep CPT | zip archive -@
