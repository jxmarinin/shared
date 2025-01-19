#####!/bin/bash

# List of full versions
versions=(  "1.7.4"   "6.2.9"   "7.3.10"   "8.3.29"   "9.1.15"   "10.2.4"   "11.2.19"   "12.2.18"   "13.3.11"   "14.2.13"   "15.2.11"    "16.2.16"   "17.3.11"    "18.2.12"    "19.1.2")

# Declare an associative array
declare -A versionMap

# Populate the array
for fullVersion in "${versions[@]}"; do
  # Extract the major version
  majorVersion="${fullVersion%%.*}"
  
  # Assign the full version to the major version key
  versionMap["$majorVersion"]="$fullVersion"
done

# Print the associative array
echo "Major version to full version map:"
for key in "${!versionMap[@]}"; do
  echo "$key: ${versionMap[$key]}"
done
