#!/bin/bash

# Clear The globed Folder
rm -r Final_Project_in_Processing-restructured/globed/netHead/*

# Link All PDE Files In Structured Into The Single Folder "globed/netHead"
#find /Users/peter/Documents/GitHub/Processing-Projects/Final_Project_in_Processing-restructured/structured -type f -name "*.pde" -exec ln -s {} /Users/peter/Documents/GitHub/Processing-Projects/Final_Project_in_Processing-restructured/globed/netHead/ \;
find $(pwd)/Final_Project_in_Processing-restructured/structured -type f -name "*.pde" -exec ln -s {} $(pwd)/Final_Project_in_Processing-restructured/globed/netHead/ \; && echo Linked

# Link The Data Directory Into The "globed/netHead" Folder
mkdir Final_Project_in_Processing-restructured/globed/netHead/data/ && echo "Final_Project_in_Processing-restructured/globed/netHead/data/ Created"
lndir $(pwd)/Final_Project_in_Processing-restructured/structured/data $(pwd)/Final_Project_in_Processing-restructured/globed/netHead/data/ && echo Data Dir Linked
#cp -as Final_Project_in_Processing-restructured/structured/data Final_Project_in_Processing-restructured/globed/netHead/
# Remove PDE Files Form The Data Dir
find Final_Project_in_Processing-restructured/globed/netHead/data/ -type f -name "*.pde" -exec rm {} \; && echo Data Dir Cleaned
