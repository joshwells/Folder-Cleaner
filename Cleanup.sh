#! /bin/bash

date
echo

# Remove all files older than X days
echo Removing the following old files:
find $1 -type f -mtime +$2 -print -delete
echo

# Remove any empty folders older than X days
echo Removing the following old, empty folders:
find $1 -type d -mtime +$2 -empty -mindepth 1 -print -delete
echo

echo Processing complete
echo
echo
