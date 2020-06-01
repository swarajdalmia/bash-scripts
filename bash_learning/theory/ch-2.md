## Notes from Chapter - 2 : Starting off with a Sha - Bang

The sha-bang ( #!) at the head of a script tells your system that this file is a set of commands to be fed to the command interpreter indicated. The #! is actually a two-byte magic number, a special marker that designates a file type, or in this case an executable shell script (type man magic for more details on this fascinating topic). Immediately following the sha-bang is a path name. This is the path to the program that interprets the commands in the script, whether it be a shell, a programming language, or a utility. This command interpreter then executes the commands in the script, starting at the top (the line following the sha-bang line), and ignoring comments.


The difference between shell scripting and bash scripting ? [ref]{https://stackoverflow.com/questions/5725296/difference-between-sh-and-bash}

### Invoking/executing the script 
After creating a script, one can run it by calling: `bash scriptname`, or if one changes it into an executable using `chmod`, 555/755 it can simply be called using `./scriptname`.
However if one wants to be able to call the script from anywhere, one needs to source it in the shell(perferably in the bash profile). 


