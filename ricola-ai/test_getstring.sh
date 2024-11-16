#!/bin/bash  

# Specify the path to the file created by the VBScript  
outputFile="test-output.txt"  

# Check if the output file exists  
if [ -f "$outputFile" ]; then  
    # Echo the content of the output file  
    cat="$(cat $outputFile)"
	echo $cat 
else  
    echo "Output file not found."  
fi  



# Optionally, you can remove the output file after echoing  
# rm "$outputFile"