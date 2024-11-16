#!/bin/bash 
#chmod u+x run_all.sh 

while IFS= read -r client_file_path; do  
  if [[ "$client_file_path" == *client_file_path* ]]; then  
    #value="${line#*=}"  # This extracts the part of the line after '='  
	client_file_path="${client_file_path#client_file_path=}"
    echo "$client_file_path"  
	#cd "$client_file_path"
	start notepad.exe $client_file_path/client_file_path.txt
  fi  
done < "test-output.txt"  # Replace with your file name

while IFS= read -r db_name; do  
  if [[ "$db_name" == *db_name* ]]; then  
    #value="${line#*=}"  # This extracts the part of the line after '='  
	db_name="${db_name#db_name=}"
    echo "${db_name}"  
  fi  
done < "test24.com.txt"  # Replace with your file name
