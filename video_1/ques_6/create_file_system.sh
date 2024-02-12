#!/bin/bash

# Create the base DataDump directory
baseDir="DataDump"
mkdir -p "$baseDir"

# Define subdirectories
subdirs=("subdir1" "subdir2/logs" "subdir3")

# Create subdirectories and populate them with files
for dir in "${subdirs[@]}"; do
    mkdir -p "$baseDir/$dir"
    touch "$baseDir/$dir/file1.txt"
    touch "$baseDir/$dir/file2.tmp"
    if [[ $dir == *"logs"* ]]; then
        touch "$baseDir/$dir/access.log"
    fi
done

# Create various files in the base directory
touch "$baseDir/basefile1.txt"
touch "$baseDir/basefile2.doc"
touch "$baseDir/error.log"

echo "File system prepared in $baseDir."
