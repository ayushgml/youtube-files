#!/bin/bash

# Define the base directory name
baseDir="Projects"

# Check if the base directory already exists
if [ -d "$baseDir" ]; then
    # If it exists, delete it
    echo "Removing existing $baseDir directory..."
    rm -rf "$baseDir"
fi

# Create the base directory
echo "Creating $baseDir directory..."
mkdir -p "$baseDir"

# Define an array of project names
projectNames=("ProjectA" "ProjectB" "ProjectC")

# Loop through the project names and create the required structure for each
for projectName in "${projectNames[@]}"; do
    # Path for the current project directory
    projectDir="$baseDir/$projectName"
    
    # Create directories for docs, src, and tests within the current project directory
    mkdir -p "$projectDir/docs" "$projectDir/src" "$projectDir/tests"
    
    # Optionally, create a dummy file in each src directory to simulate a more realistic scenario
    touch "$projectDir/src/dummyfile.txt"
done

echo "Directory structure created successfully."

