# Searching 

The different options to search files are discussed below. It is specific to MAC OSX.

## find command 

The simplest form is `find <from-path> -name <name-to-search>`. An example is `find . -name *.pdf`. It finds all files under a directory using that. 

For ignore case one can use `-iname` option. 

To find a directory using name : `find . -type d -name test`

Find Files With 777 Permissions : `find . -type f -perm 0777 -print`

Find Read Only Files : `find / -perm /u=r`

Find Executable Files : `find / -perm /a=x`

To find and remove multiple files ending in txt : `find . -type f -name "*.txt" -exec rm -f {} \;`


Other examples can be found [here](https://www.tecmint.com/35-practical-examples-of-linux-find-command/).
- finding empty directories 
- find hidden files
- find files modified in last n days
- To find all 50MB files


## locate command 

It is a lunux command, doesn't work in mac osx.
Look [here](https://www.howtoforge.com/linux-locate-command/) for details.

## mdfind command 

This command is Apple’s find routine, which searches for files based on their contents and metadata as stored in the Spotlight index.

This search will find any file that has the text “mysearch” associated with it. This can be in the file’s contents, in its metadata, or in its file name; however, you can specify a file name only to search, by using the “-name” flag similar to the “find” command. You can also specify in which directory to search by using the “-onlyin” flag followed by the desired directory path:

All text files on mac: `mdfind -name .txt`. mdfind automatically assumes wildcards. 

Find multiple files `mdfind -name 20160408_2.txt SomeOtherFile.txt YetAnotherFile.txt`

Find files in a particular directory `mdfind mysearch -onlyin /Users/tkessler/Desktop/`.

Look [here](https://ss64.com/osx/mdfind.html) for options.


## grep command 

By default grep matches are case sentitive. By adding the -i option, searches become case insensitive. 

Take the first 3 lines from the history, filtered by grep : `history | grep "git" | head -3`

We can also match on exact words with the -w option:
`history | grep -w "git status" | head -3`

Searching withing a file:
`grep -n "boto3" Pipfile`

One can do other things too, look [here](https://binx.io/blog/2018/11/19/learning-grep/):
- search within a directory, through mutiple files
- search for only files within a directory 
- just report the file without the contents 
- search regex


[Here](https://www.macworld.com/article/1041504/jangeekfactor.html):
- find whole words only 
- find number of occurances
- search for regex

[Help](https://ss64.com/osx/grep.html).


## Searching terminal history

`history` prints the last 500 commands. 

Of course good history search only works if you've got a long history. To extend the length of the history list in your terminal, add the following lines to your .bash\_profile:

```
HISTFILESIZE=1000000000
HISTSIZE=1000000
```

For an explanation look [here](https://stackoverflow.com/questions/19454837/bash-histsize-vs-histfilesize).

- ctrl + R : Recall the last command matching the characters you provide. Press this shortcut and start typing to search your bash history for a command.
 
