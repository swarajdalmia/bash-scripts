# Ch-3 : Special Characters
They are characters that have special meaning beyond thier literal meaning. Along with commands and keywords, special characters are building blocks of scripting. 

### Hash Symbol
The symbol `#` is used to comment with the exception of `#!`. 
Comment symbol can be embedded withing the pipe command in some cases, for example when one wants to delete lines with comments. 

- No way to stop a comment and start a command on the same line. However, a comment might occur after a command(white space/tab/newline).
- The standard 3; quoting and escape characters `(",',\\)` escape the #.
- It also appears in some numeric expression(base conversion) and some parameter substitution constructs(`${PATH#*:}`).

### Semicolon Character  
The semicolon`;` is used to seperate commands on the same line. A doubt semicolon is also used to terminate the case option in switch case. 

### Dot Character
- as a command, it is equivalent to source. One can either use `source scriptname` or `. scriptname`
- it is a leading prefix of hidden files that can't be looked at by simple ls command
- for directory names, `.` represents curr directory and `..` represents parent directory
- as part of regular expressions, it matches a single character(including white spaces)

### Double Quotes
It is called partial quoting and escapes most but not all special characters. 

### Single Quotes
It preserves all special characters within it. It is stronger than double quotes. Ch-5 covers details and the difference between the above two. 

### Comma
-  comma operator links together a series of arithmetic operations. All are evaluated, but only the last one is returned. Example `let "t2 = ((a = 9, 15 / 3))"`, sets t2 = 15/3 and a = 9.
- used to concatenate strings. `for file in /{,usr/}bin/*calc` - Find all executable files ending in "calc" in /bin and /usr/bin directories.
