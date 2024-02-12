#!/bin/bash

# Base directory setup
workDir="./Work"
currentDir="${workDir}/Current"
archiveDir="${workDir}/Archive"

# Create Work, Current, and Archive directories
mkdir -p "$currentDir" "$archiveDir"

# Define the number of projects
numProjects=3

# Loop to create project directories and files
for i in $(seq 1 $numProjects); do
    # Create project directories in both Current and Archive
    mkdir -p "${currentDir}/Project${i}"
    mkdir -p "${archiveDir}/Project${i}"
    
    # Create a Report.pdf file in each Archive project directory
    touch "${archiveDir}/Project${i}/Report.pdf"
done

echo "Preparation of file system complete."
