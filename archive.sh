#!/bin/bash

# get rid of empty lines ans spaces, -i means that it is edited in place
sed -i '/^$/d' $1
sed -i 's/^[ \t]*//' $1
sed -i 's/[ \t]*$//' $1

# the file needs to be in unix format
dos2unix $1 

while read p; do
    git tag "archive/""$p" "$p" # tag a branch with an "archive/" prefix
    git branch -D "$p" # delete the branch
done < $1