listing_files_and_directories() {
ls -Sl # List files and directories while sorting them with their sizes 
ls -lrS # List files and directories while sorting them with their sizes starting from reverse
ls -R # List directories with their contents
ls -t # Sort based on the last time that they were modified
ls -lh # Show sizes in human readable format
}

path_and_scripts() {
    echo $PATH # Print the Path of the current terminal
    # Assume you have a script on a directory /home/user/script.sh
    ./script.sh # The . refers to the current directory
    /home/user/script.sh # Runs the script
}

basic_commands() {
whoami # Get the user for a linux shell
echo $LOGNAME # Echo the user of a linux shell
su <username> # Login as another user
su - # Login as root
reboot / init 6 # Reboot a system
halt / poweroff / init 0 # Halt or Poweroff
shutdown # Shutdown based on options (you can reboot or poweroff from here)
top # View the top systems running your behind your machine

uname_commands() {
uname / uname -s # Get the name of the kernel of your operating system
uname -r # Get the version number your are using for your kernel
uname -v # Get the build version of your kernel 
uname -m # Get the machine type 32/64 bit
uname -p # Get the processer information
uname -o # Get the full name of the operating system
uname -a # Get all the information
}

pwd_and_cd_commands() {
pwd / echo $PWD # Get the directory you are working on
cd - # Go to your previous working directory
}

history_size () {
cat ~/.bash_history / history # View the history of commands that have been run on the terminal
echo $HISTFILESIZE # View how many commands the history can be able to save For the purpose of security in some systems this is set to zero
echo $HISTCONTROL # See the controls that have been placed for maintaining the history e.g. using ignoredups will ignore duplicate commands
# Run a previous command from history
# Run the history command and get the number of the command that you want to run
# Then run it as below
!<Number>
# Command completion to get the command you want to use
# Type the command and press the tab key twice on mac
}

command_completion() {
g # tab key twice
gcloud
}
# Add to the PATH variable
PATH=$PATH:/<directory to the new path>
globbing() {
* # Matches any number of characters
? # Mathces any one character. two ?? matches any two characters
[] # Matches any character that is the same as the list
[^] # Matches any character that is not the ones in the list
[0-9] # Matches any number
}
quoting() {
echo "User $LOGNAME" # Double quotes allow special characters to be acted upon
echo 'User $LOGNAME' # Single quotes does not allow special characters to be acted upon.
echo "User $LOGNAME \$3.50" # The backslash will make that one special character not to be acted upon
\ # Can also be used in situations where you do not want to enter but to add more commands.
mkdir 'Secret Stuff'
cd 'Secret Stuff'
cd Secret\ Stuff
cd "Secret Stuff"
}
searching_files_directories_and binary_files () {
locate # Searches a local database of files and folders for items that match that search. The locate database is updated on a daily basis.
find # Searches the file system for files that match the criteria. It is slower than locate. This is slower than the locate command but is more accurate.
find ~/Documents (path to search on)  -name "*.py"
whereis # Locate binary source and manual pages of a command
}
man <command> # View the command help
man <category> <command> # View the configuration files
whatis <command> # A summary of what is in the man pages
man -f <command> (similar to ) whatis <command> 
apropos <word to search> # Searches the man page for apperances of the word
man -k <word to search> (similar to) apropose <word to search>
mkdir -p # Make a directory with a parent folder
rmdir # Remove an empty directory
cp # Copy a file or folder
tar -czf <file .tar.gz or .tgz>
tar -cjf <file .tar.bz2>
zip -r <name for archive> <item to archive> # folder
unzip <file to unzip>
zip <file name for zip file> <file to zip>
gzip <file name>
gunzip <filename>
bzip2 <filename>
bunzip2 <filename>
# Add a group on a linux system
sudo groupadd <group name>
# Add a user on a linux system
sudo useradd -G <group id> -m -c <name of user> <name to login with>
# Give the user a password
sudo passwd <username>
# Show users who logged in previously
last
# Change permissions of a file that end with the name .txt and remove read rights from .txt file
chmod -R o-r *.txt
chmod -R 600 *.txt
# Change the group owner of a file
chown :<group name> <file name> or chown .<group name> <file name>
chgrp <group name> <file name> 
# Change the owner and group name
chown <owner name>:<group name> <file name> or chown <owner name>.<group name> <file name>
# Link a file system
ln -s <file name to be linked> <name of the link>
# Adding sticky bit
chmod o+t <file name>
chmod 0777 <file name> - no sticky bit
chmod 1777 <file name> - sticky bit
# Determine the amount of time a process has been running
ps -p <pid> -o etime









