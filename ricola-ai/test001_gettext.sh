#!/bin/bash 
#chmod u+x run_all.sh 

while IFS= read -r line; do  
  if [[ "$line" == *db_name* ]]; then  
    #value="${line#*=}"  # This extracts the part of the line after '='  
	value="${line#db_name=}"
    echo "$value"  
  fi  
done < "test24.com.txt"  # Replace with your file name

while IFS= read -r line; do  
  if [[ "$line" == *=* ]]; then  
    #value="${line#*=}"  # This extracts the part of the line after '='  
	value="${line#*=}"
    echo "$value"  
  fi  
done < "test24.com.txt"  # Replace with your file name

while IFS= read -r line; do  
  if [[ "$line" == *task_id* ]]; then  
    #value="${line#*=}"  # This extracts the part of the line after '='  
	task_id="${line#task_id=}"
    echo "$task_id"  
  fi 
done < "test24.com.txt"   