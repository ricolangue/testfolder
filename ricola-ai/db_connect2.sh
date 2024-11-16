#!/bin/bash

if [ -e "./mydirectory.vbs" ]
then
	
	cscript //nologo ./mydirectory.vbs
	mydirectory="$(<./mydirectory.txt)"
	
	
	echo "----------------------------"
	echo "Directory: $mydirectory"
	echo "----------------------------"
	
else 
	echo "----------------------------"
	echo "path not found"
	echo "----------------------------"
	#cd ./$folderB/$myfolderA/$client_web

fi

echo "-------------------------"
echo "ENTER WEBSITE FOLDER"
echo "-------------------------"
read -p "Enter client website/folder name: " client_web 

while [[ "${client_web}" == "" ]] ; do
#read -p "Enter Y to proceed:" client_web 
   if [ "${client_web}" == "Q" ]; then
		echo "-------------------------"
		echo "$client_web: Exit"
		echo "-------------------------"
		break
	elif [ "${client_web}" == "q" ]; then
		echo "-------------------------"
		echo "$client_web: Exit"
		echo "-------------------------"
		break
			
	else 
		echo "-------------------------"
		echo "Entered text: $client_web"	
		echo "Type q to escape"
		echo "-------------------------"
		#echo $client_web".sql" > ./client_web.txt
		#client_web="$(<./client_web.txt)"
		#client_file_path="$(<./client_file_path.txt)"
		if [ -e "./data-main/${client_web}_path.txt" ]
		then
			echo "-------------------------"
			echo "The file is existing"
			echo "-------------------------"
			#mv $download_path/$client_web ./bu/$client_web 
			echo "-------------------------"
			#echo "Move file successfuly to Directory bu folder" 
			echo "-------------------------"
			#cd ../../../../../
			break 
			
		else 
			echo "-------------------------"
			echo "Cannot find the file $client_web"
			echo "-------------------------"
											
		fi
	
	#break 
	fi 
	echo "-------------------------"
	echo "Type q to escape"
	echo "-------------------------"
	read -p "Enter client website/folder name: " client_web
	
done 

while [[ "${client_web}" != "Q" && "${client_web}" != "q" ]] ; do
	
	if [ "${client_web}" == "Q" ]; then
		echo "-------------------------"
		echo "$client_web: Exit"
		echo "-------------------------"
		break
	elif [ "${client_web}" == "q" ]; then
		echo "-------------------------"
		echo "$client_web: Exit"
		echo "-------------------------"
		break
			
	else 
		echo "-------------------------"
		echo "Entered text: $client_web"	
		echo "Type q to escape"
		echo "-------------------------"
		#echo $client_web".sql" > ./client_web.txt
		#client_web="$(<./client_web.txt)"
		#client_file_path="$(<./client_file_path.txt)"
		if [ -e "./data-main/${client_web}_path.txt" ]
		then
			echo "-------------------------"
			echo "The file is existing"
			echo "-------------------------"
			#mv $download_path/$client_web ./bu/$client_web 
			echo "-------------------------"
			#echo "Move file successfuly to Directory bu folder" 
			#client_file_path="$(<./client_file_path.txt)"
			
			echo "-------------------------"
			#cd ../../../../../
			break 
			
		else 
			echo "-------------------------"
			echo "Cannot find the file $client_web"
			echo "-------------------------"
											
		fi
	
	#break
	
	fi
	echo "-------------------------"
	echo "Type q to escape"
	echo "-------------------------"
	read -p "Enter client website/folder name: " client_web
	
done

if [ -e "./data-main/${client_web}_path.txt" ]
then
	cd ./data-main
	client_file_path="$(<./${client_web}_path.txt)"
	cd ../
	cd $client_file_path
	
echo "-------------------------"
PS3='Select TASK: '
options=("DB CONNECT" "DB2 CONNECT" "BU SQL" "UP SQL" "DB ADMINER" "Phpminiadmin" "FILEZILLA CONNECT" "MODIFY DB" "MODIFY FTP-HOST" "MODIFY MCLICK" "QUIT")
select opt in "${options[@]}"
do
    case $opt in
		"DB CONNECT")
			echo "--------------------"
            echo "DB CONNECTION"
			echo "--------------------"
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web

			fi
			
			if [ -e "./db_link.vbs" ]
				then
					echo "-------------------------"
					echo "STARTING PROCESS DB CONNECTION"
					echo "-------------------------"
					cscript //nologo ./db_link.vbs				
									
				else
					echo "-------------------------"
					echo "db_link.vbs is not existing."
					echo "-------------------------"
					
					read -p "Enter database link:" db_link  
					#echo "The database link: " $db_link

					while [[ "${db_link}" == "" ]] ; do
					   read -p "Enter database link:" db_link  
					   #echo "The database link: " $db_link

					  #(( i += 1 ))
					done

					read -p "Enter database name:" db_name  
					#echo "The database link: " $db_link

					while [[ "${db_name}" == "" ]] ; do
					   read -p "Enter database name:" db_name 
					   #echo "The database link: " $db_link

					  #(( i += 1 ))
					done
					
					echo $db_name".sql" > ./db_name.txt

					read -p "Enter db username:" db_username 
					#echo "The db username: " $db_username

					while [[ "${db_username}" == "" ]] ; do
						  
					   read -p "Enter db username:" db_username 
					   #echo "The db username: " $db_username
					   
					  #(( i += 1 ))
					done

					read -p "Enter db password:" db_password 
					#echo "The db password: " $db_password

					while [[ "${db_password}" == "" ]] ; do
					   
					   read -p "Enter db password:" db_password 
					   #echo "The db password: " $db_password

					  #(( i += 1 ))
					done
					
					if [ -e "./../../../../../db_link.vbs" ]
					then
						echo "File existing"
						cp ./../../../../../db_link.vbs ./db_link.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_link" "$db_link" ./db_link.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_username" "$db_username" ./db_link.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_password" "$db_password" ./db_link.vbs
						cscript //nologo ./db_link.vbs
						
					else 
						echo "File not found"
					fi
					
				fi 
			#break
			
            ;;
		"DB2 CONNECT")
			echo "--------------------"
            echo "DB CONNECTION"
			echo "--------------------"
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web

			fi
			
			if [ -e "./db_link2.vbs" ]
				then
					echo "-------------------------"
					echo "STARTING PROCESS DB CONNECTION"
					echo "-------------------------"
					cscript //nologo ./db_link2.vbs				
									
				else
					echo "-------------------------"
					echo "db_link2.vbs is not existing."
					echo "-------------------------"
					
					read -p "Enter database link:" db_link  
					#echo "The database link: " $db_link

					while [[ "${db_link}" == "" ]] ; do
					   read -p "Enter database link:" db_link  
					   #echo "The database link: " $db_link

					  #(( i += 1 ))
					done

					read -p "Enter database name:" db_name  
					#echo "The database link: " $db_link

					while [[ "${db_name}" == "" ]] ; do
					   read -p "Enter database name:" db_name 
					   #echo "The database link: " $db_link

					  #(( i += 1 ))
					done
					
					echo $db_name".sql" > ./db_name.txt

					read -p "Enter db username:" db_username 
					#echo "The db username: " $db_username

					while [[ "${db_username}" == "" ]] ; do
						  
					   read -p "Enter db username:" db_username 
					   #echo "The db username: " $db_username
					   
					  #(( i += 1 ))
					done

					read -p "Enter db password:" db_password 
					#echo "The db password: " $db_password

					while [[ "${db_password}" == "" ]] ; do
					   
					   read -p "Enter db password:" db_password 
					   #echo "The db password: " $db_password

					  #(( i += 1 ))
					done
					
					if [ -e "./../../../../../db_link2.vbs" ]
					then
						echo "File existing"
						cp ./../../../../../db_link2.vbs ./db_link2.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_link" "$db_link" ./db_link2.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_username" "$db_username" ./db_link2.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_password" "$db_password" ./db_link2.vbs
						cscript //nologo ./db_link2.vbs
						
						#mouse_click
						cscript //nologo "../../../../../textReplace.vbs" "m_x" "726" ./$client_file_path/db_link2.vbs
						cscript //nologo "../../../../../textReplace.vbs" "m_y" "332" ./$client_file_path/db_link2.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_x" "64" ./$client_file_path/db_link2.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_y" "231" ./$client_file_path/db_link2.vbs
						cscript //nologo "../../../../../textReplace.vbs" "exp_x" "654" ./$client_file_path/db_link2.vbs
						cscript //nologo "../../../../../textReplace.vbs" "exp_y" "127" ./$client_file_path/db_link2.vbs
						cscript //nologo "../../../../../textReplace.vbs" "c_x" "1310" ./$client_file_path/db_link2.vbs
						cscript //nologo "../../../../../textReplace.vbs" "c_y" "488" ./$client_file_path/db_link2.vbs
						
						
					else 
						echo "File not found"
					fi
					
				fi 
			#break
			
            ;;
        "BU SQL")
          
		  echo "------------------"
            echo "SQL BU BACKUP"
			echo "------------------"
		   if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web

			fi
			
			#pc user 1
			pc_user="Production"
					
			#pc user 2
			pc_user2="User" 
			
			user_path='C://Users/'$pc_user
			if [ ! -d $user_path ]; then
			
				echo "----------------------------"
				echo "User does not exist"
				echo "User 1: $pc_user"
				echo "----------------------------"
				
				user_path='C://Users/'$pc_user2
				
				if [ ! -d $user_path ]; then
			
					echo "----------------------------"
					echo "User 2 does not exist"
					echo "----------------------------"
				
				else

					echo "----------------------------"
					echo "User 2 exist"
					echo "----------------------------"
					#user_path='C://Users/'$pc_user2
					pc_user=$pc_user2
					user_path='C://Users/'$pc_user
					download_path=$user_path'/Downloads'
					echo "User 2: $pc_user2"
					echo $user_path > ./user_path.txt
							
				fi
		
			else

				echo "----------------------------"
				echo "User exist"
				echo "----------------------------"
				user_path='C://Users/'$pc_user
				download_path=$user_path'/Downloads'
				echo "User 1: $user_path"
				echo $user_path > ./user_path.txt
						
			fi 
								
			#download_path=$user_path'/Downloads'
			#echo $user_path
			#echo $download_path 
			
			if [ ! -d $user_path ]; then
				echo "----------------------------"
				echo "User Directory not exist"
				echo "----------------------------"
				read -p "Enter PC user name:" pc_user  
				while [[ "${pc_user}" == "" ]] ; do
					echo "----------------------------"
				   read -p "Enter PC user name:" pc_user   
				done  

				while [[ "${pc_user}" != "" ]] ; do
				   user_path='C://Users/'$pc_user
					download_path=$user_path'/Downloads'
			
				   if [ ! -d $user_path ]; then
						echo "----------------------------"
						echo "User not existing"
						echo "----------------------------"
						read -p "Enter PC user name:" pc_user  
				   
				   else  
						echo "----------------------------"
						echo "User exist"
						echo "----------------------------"
						break 
				   
				   fi 
								
				done
				
			else 
				echo "----------------------------"
				echo "User directory is existing"
				echo "----------------------------"
			
			fi 
						
			user_path='C://Users/'$pc_user
			download_path=$user_path'/Downloads'
			
			if [ -e "./db_name.txt" ]
			then
				db_name="$(<./db_name.txt)"
				#client_file_path="$(<./client_file_path.txt)"
				if [ -e "$download_path/$db_name" ]
				then
					echo "-------------------------"
					echo "The file is existing"
					echo "-------------------------"
					mv $download_path/$db_name ./bu/$db_name 
					echo "Move file successfuly to Directory bu folder" 
					cd ../../../../../
				else
					echo "-------------------------"
					echo "Database file not found"
					echo "Type q to escape"
					echo "-------------------------"
					read -p "Enter database name: " db_name 

					while [[ "${db_name}" == "" ]] ; do
					#read -p "Enter Y to proceed:" db_name 
					   if [ "${db_name}" == "Q" ]; then
							echo "-------------------------"
							echo "$db_name: Exit"
							echo "-------------------------"
							break
						elif [ "${db_name}" == "q" ]; then
							echo "-------------------------"
							echo "$db_name: Exit"
							echo "-------------------------"
							break
								
						else 
							echo "-------------------------"
							echo "Entered db name: $db_name"	
							echo "Type q to escape"
							echo "-------------------------"
							echo $db_name".sql" > ./db_name.txt
							db_name="$(<./db_name.txt)"
							#client_file_path="$(<./client_file_path.txt)"
							if [ -e "$download_path/$db_name" ]
							then
								echo "-------------------------"
								echo "The file is existing"
								echo "-------------------------"
								mv $download_path/$db_name ./bu/$db_name 
								echo "-------------------------"
								echo "Move file successfuly to Directory bu folder" 
								echo "-------------------------"
								cd ../../../../../
								break 
								
							else 
								echo "-------------------------"
								echo "Cannot find the file $db_name"
								echo "-------------------------"
																
							fi
						
						#break 
						fi 
						echo "-------------------------"
						echo "Type q to escape"
						echo "-------------------------"
						read -p "Enter database name: " db_name  
						
					done 

					while [[ "${db_name}" != "Q" && "${db_name}" != "q" ]] ; do
						
						if [ "${db_name}" == "Q" ]; then
							echo "-------------------------"
							echo "$db_name: Exit"
							echo "-------------------------"
							break
						elif [ "${db_name}" == "q" ]; then
							echo "-------------------------"
							echo "$db_name: Exit"
							echo "-------------------------"
							break
								
						else 
							echo "-------------------------"
							echo "Entered db name: $db_name"	
							echo "Type q to escape"
							echo "-------------------------"
							echo $db_name".sql" > ./db_name.txt
							db_name="$(<./db_name.txt)"
							#client_file_path="$(<./client_file_path.txt)"
							if [ -e "$download_path/$db_name" ]
							then
								echo "-------------------------"
								echo "The file is existing"
								echo "-------------------------"
								mv $download_path/$db_name ./bu/$db_name 
								echo "-------------------------"
								echo "Move file successfuly to Directory bu folder" 
								echo "-------------------------"
								cd ../../../../../
								break 
								
							else 
								echo "-------------------------"
								echo "Cannot find the file $db_name"
								echo "-------------------------"
																
							fi
						
						#break
						
						fi
						echo "-------------------------"
						echo "Type q to escape"
						echo "-------------------------"
						read -p "Enter database name: " db_name 
						
					done
													
				fi 
												
			else
				echo "-------------------------"
				echo "Cannot find the database file"
				echo "-------------------------"

			fi
			
						
            ;;
        "UP SQL")
			echo "------------------"
            echo "SQL UP BACKUP"
			echo "------------------"
		   if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path2="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path2
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web

			fi
			
			pc_user="Production"
			user_path='C://Users/'$pc_user
			download_path=$user_path'/Downloads'
			echo $user_path
			echo $download_path 
			
			if [ ! -d $user_path ]; then
				echo "-------------------------"
				echo "User Directory not exist"
				echo "-------------------------"
				read -p "Enter PC user name:" pc_user  
				while [[ "${pc_user}" == "" ]] ; do
					echo "-------------------------"
				   read -p "Enter PC user name:" pc_user   
				done  

				while [[ "${pc_user}" != "" ]] ; do
				   user_path='C://Users/'$pc_user
					download_path=$user_path'/Downloads'
			
				   if [ ! -d $user_path ]; then
						echo "-------------------------"
						echo "User not existing"
						echo "-------------------------"
						read -p "Enter PC user name:" pc_user  
				   
				   else  
						echo "-------------------------"
						echo "User exist"
						echo "-------------------------"
						break 
				   
				   fi 
								
				done
				
			else 
				echo "-------------------------"
				echo "User directory is existing"
				echo "-------------------------"
			
			fi 
						
			user_path='C://Users/'$pc_user
			download_path=$user_path'/Downloads'
			
			if [ -e "./db_name.txt" ]
			then
				db_name="$(<./db_name.txt)"
				#client_file_path="$(<./client_file_path.txt)"
				if [ -e "$download_path/$db_name" ]
				then
					echo "-------------------------"
					echo "The file is existing"
					echo "-------------------------"
					mv $download_path/$db_name ./up/$db_name 
					echo "-------------------------"
					echo "Move file successfuly to Directory up folder" 
					echo "-------------------------"
					cd ../../../../../
				else
					echo "-------------------------"
					echo "Database file not found"
					echo "Type q to escape"
					echo "-------------------------"
					read -p "Enter database name: " db_name 

					while [[ "${db_name}" == "" ]] ; do
					#read -p "Enter Y to proceed:" db_name 
					   if [ "${db_name}" == "Q" ]; then
							echo "-------------------------"
							echo "$db_name: Exit"
							echo "-------------------------"
							break
						elif [ "${db_name}" == "q" ]; then
							echo "-------------------------"
							echo "$db_name: Exit"
							echo "-------------------------"
							break
								
						else 
							echo "-------------------------"
							echo "Entered db name: $db_name"	
							echo "Type q to escape"
							echo "-------------------------"
							echo $db_name".sql" > ./db_name.txt
							db_name="$(<./db_name.txt)"
							#client_file_path="$(<./client_file_path.txt)"
							if [ -e "$download_path/$db_name" ]
							then
								echo "-------------------------"
								echo "The file is existing"
								echo "-------------------------"
								mv $download_path/$db_name ./up/$db_name 
								echo "-------------------------"
								echo "Move file successfuly to Directory up folder" 
								echo "-------------------------"
								cd ../../../../../
								break 
								
							else 
								echo "-------------------------"
								echo "Cannot find the file $db_name"
								echo "-------------------------"
																
							fi
						
						#break 
						fi 
						echo "-------------------------"
						echo "Type q to escape"
						echo "-------------------------"
						read -p "Enter database name: " db_name  
						
					done 

					while [[ "${db_name}" != "Q" && "${db_name}" != "q" ]] ; do
						
						if [ "${db_name}" == "Q" ]; then
							echo "-------------------------"
							echo "$db_name: Exit"
							echo "-------------------------"
							break
						elif [ "${db_name}" == "q" ]; then
							echo "-------------------------"
							echo "$db_name: Exit"
							echo "-------------------------"
							break
								
						else 
							echo "-------------------------"
							echo "Entered db name: $db_name"	
							echo "Type q to escape"
							echo "-------------------------"
							echo $db_name".sql" > ./db_name.txt
							db_name="$(<./db_name.txt)"
							#client_file_path="$(<./client_file_path.txt)"
							if [ -e "$download_path/$db_name" ]
							then
								echo "-------------------------"
								echo "The file is existing"
								echo "-------------------------"
								mv $download_path/$db_name ./up/$db_name 
								echo "-------------------------"
								echo "Move file successfuly to Directory up folder" 
								echo "-------------------------"
								cd ../../../../../
								break 
								
							else 
								echo "-------------------------"
								echo "Cannot find the file $db_name"
								echo "-------------------------"
																
							fi
						
						#break
						
						fi
						echo "-------------------------"
						echo "Type q to escape"
						echo "-------------------------"
						read -p "Enter database name: " db_name 
						
					done
													
				fi 
												
			else
				echo "-------------------------"
				echo "Cannot find the database file"
				echo "-------------------------"

			fi
		
			
            ;;
			
		"DB ADMINER")
			echo "--------------------"
            echo "DB ADMINER CONNECTION"
			echo "--------------------"
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web

			fi
			
			if [ -e "./adminer.vbs" ]
				then
					echo "-------------------------"
					echo "STARTING PROCESS DB ADMINER CONNECTION"
					echo "-------------------------"
					cscript //nologo ./adminer.vbs				
									
				else
					echo "-------------------------"
					echo "adminer.vbs is not existing."
					echo "-------------------------"
										
					read -p "Enter database name:" db_name  
					#echo "The database link: " $db_link

					while [[ "${db_name}" == "" ]] ; do
					   read -p "Enter database name:" db_name 
					   #echo "The database link: " $db_link

					  #(( i += 1 ))
					done
					
					echo $db_name".sql" > ./db_name.txt

					read -p "Enter db username:" db_username 
					#echo "The db username: " $db_username

					while [[ "${db_username}" == "" ]] ; do
						  
					   read -p "Enter db username:" db_username 
					   #echo "The db username: " $db_username
					   
					  #(( i += 1 ))
					done

					read -p "Enter db password:" db_password 
					#echo "The db password: " $db_password

					while [[ "${db_password}" == "" ]] ; do
					   
					   read -p "Enter db password:" db_password 
					   #echo "The db password: " $db_password

					  #(( i += 1 ))
					done
					
					if [ -e "./../../../../../adminer.vbs" ]
					then
						echo "File existing"
						cp ./../../../../../adminer.vbs ./adminer.vbs
						
						website_link="$(<./website_link.txt)"
						adminer_link=$website_link/adminer.php 
						cscript //nologo "../../../../../textReplace.vbs" "adminer_link" "$db_link" ./adminer.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_username" "$db_username" ./adminer.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_password" "$db_password" ./adminer.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_name" "$db_name" ./adminer.vbs
						cscript //nologo ./adminer.vbs
						
					else 
						echo "File not found"
					fi
					
				fi 
			#break
			
            ;;
			
			"Phpminiadmin")
			echo "--------------------"
            echo "DB Phpminiadmin CONNECTION"
			echo "--------------------"
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path2="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path2
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web

			fi
			
			if [ -e "./phpminiadmin.vbs" ]
				then
					echo "-------------------------"
					echo "STARTING PROCESS DB phpminiadmin CONNECTION"
					echo "-------------------------"
					cscript //nologo ./phpminiadmin.vbs				
									
				else
					echo "-------------------------"
					echo "phpminiadmin.vbs is not existing."
					echo "-------------------------"
										
					read -p "Enter database name:" db_name  
					#echo "The database link: " $db_link

					while [[ "${db_name}" == "" ]] ; do
					   read -p "Enter database name:" db_name 
					   #echo "The database link: " $db_link

					  #(( i += 1 ))
					done
					
					echo $db_name".sql" > ./db_name.txt

					read -p "Enter db username:" db_username 
					#echo "The db username: " $db_username

					while [[ "${db_username}" == "" ]] ; do
						  
					   read -p "Enter db username:" db_username 
					   #echo "The db username: " $db_username
					   
					  #(( i += 1 ))
					done

					read -p "Enter db password:" db_password 
					#echo "The db password: " $db_password

					while [[ "${db_password}" == "" ]] ; do
					   
					   read -p "Enter db password:" db_password 
					   #echo "The db password: " $db_password

					  #(( i += 1 ))
					done
					
					if [ -e "./../../../../../adminer.vbs" ]
					then
						echo "File existing"
						cp ./../../../../../adminer.vbs ./phpminiadmin.vbs
						
						website_link="$(<./website_link.txt)"
						adminer_link=$website_link/phpminiadmin.php 
						cscript //nologo "../../../../../textReplace.vbs" "adminer_link" "$db_link" ./phpminiadmin.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_username" "$db_username" ./phpminiadmin.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_password" "$db_password" ./phpminiadmin.vbs
						cscript //nologo "../../../../../textReplace.vbs" "db_name" "$db_name" ./phpminiadmin.vbs
						cscript //nologo ./phpminiadmin.vbs
						
					else 
						echo "File not found"
					fi
					
				fi 
			#break
			
            ;;
			
			"FILEZILLA CONNECT")
			echo "--------------------"
            echo "FILEZILLA CONNECTION"
			echo "--------------------"
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web

			fi
			
			if [ -e "./filezilla.vbs" ]
				then
					echo "-------------------------"
					echo "STARTING PROCESS DB CONNECTION"
					echo "-------------------------"
					cscript //nologo ./filezilla.vbs				
									
				else
					echo "-------------------------"
					echo "filezilla.vbs is not existing."
					echo "-------------------------"
					
					read -p "Enter ftp hostname:" ftp_hostname 
					#echo "The ftp hostname: " $ftp_hostname

					while [[ "${ftp_hostname}" == "" ]] ; do
					   
					   read -p "Enter ftp hostname:" ftp_hostname 
					   #echo "The ftp hostname: " $ftp_hostname

					  #(( i += 1 ))
					done

					read -p "Enter ftp username:" ftp_username 
					#echo "The ftp username: " $ftp_username

					while [[ "${ftp_username}" == "" ]] ; do
					   
					   read -p "Enter ftp username:" ftp_username 
					   #echo "The ftp username: " $ftp_username

					  #(( i += 1 ))
					done

					read -p "Enter ftp password:" ftp_password 
					#echo "The ftp password: " $ftp_password

					while [[ "${ftp_password}" == "" ]] ; do
					   
					   read -p "Enter ftp password:" ftp_password 
					   #echo "The ftp password: " $ftp_password

					  #(( i += 1 ))
					done
					
					if [ -e "./../../../../../filezilla.vbs" ]
					then
						echo "File existing"
						cp ./../../../../../filezilla.vbs ./filezilla.vbs
						cscript //nologo "./../../../../../textReplace.vbs" "ftp_hostname" "$ftp_hostname" ./filezilla.vbs
						cscript //nologo "./../../../../../textReplace.vbs" "ftp_username" "$ftp_username" ./filezilla.vbs
						cscript //nologo "./../../../../../textReplace.vbs" "ftp_password" "$ftp_password" ./filezilla.vbs
						cscript //nologo "./../../../../../textReplace.vbs" "client_dir" "$client_dir" ./filezilla.vbs
						cscript //nologo ./filezilla.vbs
						
					else 
						echo "File not found"
					fi
										
				fi 
			#break
			
            ;;
			
			"MODIFY DB")
			echo "--------------------"
            echo "MODIFY DB INFO"
			echo "--------------------"
			
			echo "--------------------"
			
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				#cd $client_file_path2
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web
				cd ../../../../../
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../

			fi
			
					
			config="config"
			if [ ! -d $config ]; then
				mkdir -p $config;
				echo "$config folder was created successfully"
				
			else
				echo "Directory already exist"

			fi;		
			
			echo "Get db_link"
			db_link="$(<./config/db_link.txt)"
			cscript //nologo "textReplace.vbs" "$db_link" "db_link" ./$client_file_path/db_link.vbs
			cscript //nologo "textReplace.vbs" "$db_link" "db_link" ./$client_file_path/db_link2.vbs
			
			echo "Get db_name"
			db_name="$(<./config/db_name.txt)"
			cscript //nologo "textReplace.vbs" "$db_name" "db_name" ./$client_file_path/db_link.vbs
			cscript //nologo "textReplace.vbs" "$db_name" "db_name" ./$client_file_path/db_link2.vbs
			
			echo "Get db_username"
			db_username="$(<./config/db_username.txt)"
			cscript //nologo "textReplace.vbs" "$db_username" "db_username" ./$client_file_path/db_link.vbs
			cscript //nologo "textReplace.vbs" "$db_username" "db_username" ./$client_file_path/db_link2.vbs
			
			echo "Get db_password"
			db_password="$(<./config/db_password.txt)"
			cscript //nologo "textReplace.vbs" "$db_password" "db_password" ./$client_file_path/db_link.vbs
			cscript //nologo "textReplace.vbs" "$db_password" "db_password" ./$client_file_path/db_link2.vbs
			
			echo "-------------------------"
			echo "DB LINK"
			echo "-------------------------"
			
			read -p "Enter database link:" db_link  
			#echo "The database link: " $db_link

			while [[ "${db_link}" == "" ]] ; do
			   #read -p "Enter database link:" db_link  
			   db_link="$(<./config/db_link.txt)"
			done
			
			echo "$db_link" > ./config/db_link.txt
			
			#db_link replacement
			cscript //nologo "textReplace.vbs" "db_link" "$db_link" ./$client_file_path/db_link.vbs
			cscript //nologo "textReplace.vbs" "db_link" "$db_link" ./$client_file_path/db_link2.vbs
			
			echo "-------------------------"
			echo "DB NAME"
			echo "-------------------------"

			read -p "Enter database name:" db_name  
			#echo "The database link: " $db_link

			while [[ "${db_name}" == "" ]] ; do
			   db_name="$(<./config/db_name.txt)"
			done
			
			echo "$db_name" > ./config/db_name.txt
			
			#db_name replacement
			cscript //nologo "textReplace.vbs" "db_name" "$db_name" ./$client_file_path/db_link.vbs
			cscript //nologo "textReplace.vbs" "db_name" "$db_name" ./$client_file_path/db_link2.vbs
			
			echo "-------------------------"
			echo "DB USERNAME"
			echo "-------------------------"

			read -p "Enter db username:" db_username 
			#echo "The db username: " $db_username

			while [[ "${db_username}" == "" ]] ; do
			   db_username="$(<./config/db_username.txt)"
			done
			
			echo "$db_username" > ./config/db_username.txt
			
			#db_username replacement
			cscript //nologo "textReplace.vbs" "db_username" "$db_username" ./$client_file_path/db_link.vbs
			cscript //nologo "textReplace.vbs" "db_username" "$db_username" ./$client_file_path/db_link2.vbs
			
			echo "-------------------------"
			echo "DB PASSWORD"
			echo "-------------------------"

			read -p "Enter db password:" db_password 
			#echo "The db password: " $db_password

			while [[ "${db_password}" == "" ]] ; do
			   db_password="$(<./config/db_password.txt)"
			done
			
			echo "$db_password" > ./config/db_password.txt
			
			#db_password replacement
			cscript //nologo "textReplace.vbs" "db_password" "$db_password" ./$client_file_path/db_link.vbs
			cscript //nologo "textReplace.vbs" "db_password" "$db_password" ./$client_file_path/db_link2.vbs
			
			if [ -e "./client_file_path.txt" ]
			then
				client_file_path="$(<./client_file_path.txt)"
				cd $client_file_path
			else
				echo "----------------------------"
				echo "path not found"
				echo "Change directory to main"
				echo "-------------------------"
				
			fi
			
	
			
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web

			fi
			
            ;;
			
			"MODIFY FTP-HOST")
			echo "--------------------"
            echo "MODIFY FTP HOST"
			echo "--------------------"
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				#cd $client_file_path2
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web
				cd ../../../../../
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../

			fi
			
			config="config"
			if [ ! -d $config ]; then
				mkdir -p $config;
				echo "$config folder was created successfully"
				
			else
				echo "Directory already exist"

			fi;		
			
			echo "Get ftp_hostname"
			ftp_hostname="$(<./config/ftp_hostname.txt)"
			cscript //nologo "textReplace.vbs" "$ftp_hostname" "ftp_hostname" ./$client_file_path/filezilla.vbs
						
			echo "Get ftp_username"
			ftp_username="$(<./config/ftp_username.txt)"
			cscript //nologo "textReplace.vbs" "$ftp_username" "ftp_username" ./$client_file_path/filezilla.vbs
			
			echo "Get ftp_password"
			ftp_password="$(<./config/ftp_password.txt)"
			cscript //nologo "textReplace.vbs" "$ftp_password" "ftp_password" ./$client_file_path/filezilla.vbs
					
			echo "-------------------------"
			echo "FTP HOSTNAME"
			echo "-------------------------"
			
			read -p "Enter ftp hostname:" ftp_hostname 
			
			while [[ "${ftp_hostname}" == "" ]] ; do
			   ftp_hostname="$(<./config/ftp_hostname.txt)"
			done
			
			echo "$ftp_hostname" > ./config/ftp_hostname.txt
			
			#ftp_hostname replacement
			cscript //nologo "textReplace.vbs" "ftp_hostname" "$ftp_hostname" ./$client_file_path/filezilla.vbs
						
			echo "-------------------------"
			echo "FTP USERNAME"
			echo "-------------------------"
			
			read -p "Enter ftp username:" ftp_username 
			
			while [[ "${ftp_username}" == "" ]] ; do
			   ftp_username="$(<./config/ftp_username.txt)"
			done
			
			echo "$ftp_username" > ./config/ftp_username.txt
			
			#ftp_username replacement
			cscript //nologo "textReplace.vbs" "ftp_username" "$ftp_username" ./$client_file_path/filezilla.vbs
			
			
			echo "-------------------------"
			echo "FTP PASSWORD"
			echo "-------------------------"
			
			read -p "Enter ftp password:" ftp_password 
			
			while [[ "${ftp_password}" == "" ]] ; do
			   ftp_password="$(<./config/ftp_password.txt)"
			done
			
			echo "$ftp_password" > ./config/ftp_password.txt
			
			#ftp_password replacement
			cscript //nologo "textReplace.vbs" "ftp_password" "$ftp_password" ./$client_file_path/filezilla.vbs
											
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				#cd $client_file_path2
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				

			fi
			
					
            ;;
			
		"MODIFY MCLICK")
			echo "--------------------"
            echo "CHANGE MOUSE CLICK XY POSITION"
			echo "--------------------"
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				#cd $client_file_path2
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web
				cd ../../../../../
				cd ./data-main
				client_file_path="$(<./${client_web}_path.txt)"
				cd ../

			fi
			
			echo "m_xy position"
			m_xy="$(<./m_xy.txt)"
			cscript //nologo "textReplace.vbs" "$m_xy" "m_xy" ./$client_file_path/db_link.vbs
			cscript //nologo "textReplace.vbs" "$m_xy" "m_xy" ./$client_file_path/db_link2.vbs
			
			echo "db_xy postion "
			db_xy="$(<./db_xy.txt)"
			cscript //nologo "textReplace.vbs" "$db_xy" "db_xy" ./$client_file_path/db_link2.vbs
			
			echo "exp_xy postion "
			exp_xy="$(<./exp_xy.txt)"
			cscript //nologo "textReplace.vbs" "$exp_xy" "exp_xy" ./$client_file_path/db_link2.vbs
			
			echo "c_xy position"
			c_xy="$(<./c_xy.txt)"
			cscript //nologo "textReplace.vbs" "$c_xy" "c_xy" ./$client_file_path/db_link2.vbs
			
			echo "-------------------------"
			echo "M_XY POSITION ."
			echo "ex: x y"
			echo "ex: 726 332"
			echo "-------------------------"
			
			read -p "Enter M_XY position:" m_xy   
			#echo "The database link: " $db_link

			while [[ "${m_xy}" == "" ]] ; do
			   #read -p "Enter M_XY position:" m_xy
			   m_xy="$(<./m_xy.txt)"

			  #(( i += 1 ))
			done
			
			echo "$m_xy" > m_xy.txt
			
			#m_xy position replacement
			cscript //nologo "textReplace.vbs" "m_xy" "$m_xy" ./$client_file_path/db_link.vbs
			cscript //nologo "textReplace.vbs" "m_xy" "$m_xy" ./$client_file_path/db_link2.vbs
			
			echo "-------------------------"
			echo "DB_XY POSITION ."
			echo "ex: x y"
			echo "ex: 64 231"
			echo "-------------------------"
			
			read -p "Enter DB_XY position:" db_xy   
			#echo "The database link: " $db_link

			while [[ "${db_xy}" == "" ]] ; do
			   #read -p "Enter M_XY position:" db_xy
			   db_xy="$(<./db_xy.txt)"

			  #(( i += 1 ))
			done
			
			echo "$db_xy" > db_xy.txt
			cscript //nologo "textReplace.vbs" "db_xy" "$db_xy" ./$client_file_path/db_link2.vbs
			
			echo "-------------------------"
			echo "EXP_XY POSITION ."
			echo "ex: x y"
			echo "ex: 654 127"
			echo "-------------------------"
			
			read -p "Enter EXP_XY position:" exp_xy   
			#echo "The database link: " $db_link

			while [[ "${exp_xy}" == "" ]] ; do
			   #read -p "Enter M_XY position:" db_xy
			   exp_xy="$(<./exp_xy.txt)"

			  #(( i += 1 ))
			done
			
			echo "$exp_xy" > exp_xy.txt
			cscript //nologo "textReplace.vbs" "exp_xy" "$exp_xy" ./$client_file_path/db_link2.vbs
			
			echo "-------------------------"
			echo "C_XY POSITION ."
			echo "ex: x y"
			echo "ex: 1310 488"
			echo "-------------------------"
			
			read -p "Enter C_XY position:" c_xy   
			#echo "The database link: " $db_link

			while [[ "${c_xy}" == "" ]] ; do
			   #read -p "Enter M_XY position:" db_xy
			   c_xy="$(<./c_xy.txt)"

			  #(( i += 1 ))
			done
			
			echo "$c_xy" > c_xy.txt
			cscript //nologo "textReplace.vbs" "c_xy" "$c_xy" ./$client_file_path/db_link2.vbs
			
			if [ -e "./client_file_path.txt" ]
			then
				client_file_path="$(<./client_file_path.txt)"
				cd $client_file_path
			else
				echo "----------------------------"
				echo "path not found"
				echo "Change directory to main"
				echo "-------------------------"
				
			fi
			
            ;;
			
		"QUIT") 
			if [ -e "./client_file_path.txt" ]
			then
				client_file_path="$(<./client_file_path.txt)"
				#cd $client_file_path
			else
				echo "----------------------------"
				echo "path not found"
				echo "Change directory to main"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web
				cd ./../../../../../

			fi
			echo "-------------------------"
            break
            ;;
			
        *) echo "invalid option $REPLY press ENTER KEY to view menu"
				
		;;
    esac
done

#-----------------------------------------------
	
	
else
	echo "-------------------------"
	echo "path not found"
	echo "-------------------------"
	#cd ./$folderB/$myfolderA/$client_web

fi












