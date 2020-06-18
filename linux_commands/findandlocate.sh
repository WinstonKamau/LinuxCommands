#! /usr/env/bin bash

# Find a file in the / directory
find / -name "test.txt"
# Find a file in the / directory but ignore case when doing the search
find / -iname "test.txt"
# Find all files in the / directory that are not called test.txt
find / -not -name "test.txt"
# Find all files that are links in the / directory
find / -type l
# Find all files that are characters in the / directory
find / -type c
# Find all directories in the / directory
find / -type d
# Find all files in the / directory
find / -type f
# Find all files in the / directory ending with .log
find / -type f -name "*.log"
# Find all directory in the / directory  called log
find / -type d -name "log"
# Find all files larger than a certain size
find /usr/bin -size +27000c
find /usr/bin -size +27k
find /usr/bin -size +1M
# Find a file created greater than one day ago  in the / directory
find / -type f mtime 1
# Find a file created less than a day ago in the / directory
find / -type f -mtime -1
# Find all files owned by the user tom
find / -user tom
# Pipe outputs to more command to paginate output
find /etc -user root | more
# Find all files with a certain permission
find . -perm 755
# Find all files with the name test.txt and change its permissions
find . -name "text.txt" -exec chmod 700 {} \;
# Locate is a less powerful way of looking for file. It uses a db to do this.
locate test.txt
# If a file was created pretty recently you may have to update the database of file for locate to find it.
updatedb
# See partitions in your linux machine in a human readable format
df -h