#!/bin/bash
# I endedup use the following solution from stackoverflow:
# http://stackoverflow.com/questions/9216291/using-find-and-rename-for-their-intended-use
# find all ruby files under this folder, replace filename that contains "assign" with "work"

find . -name '*.rb' -print0 | while read -r -d '' filename; do
  #echo mv "$filename" "${filename/assign/work}"
  mv "$filename" "${filename/assign/work}"
done

#The following link has xargs with sed, I did not try it, but the explanation was thorough:
#https://nixtip.wordpress.com/2010/10/20/using-xargs-to-rename-multiple-files/
