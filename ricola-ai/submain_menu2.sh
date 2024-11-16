#!/bin/bash
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
			echo "-------------------------"
			echo "The file is existing"
			echo "-------------------------"
			
			
			
			#!/bin/bash
echo "-------------------------"
PS3='Select TASK: '
options=("DB CONNECT" "BU SQL" "UP SQL" "SCRN BU HOME" "SCRN UP HOME" "SCRN EMAIL" "SCRN VIEWFORM" "SCRN OFDP" "SCRN ICOGNITO" "SCRN NEW" "SCRN CHROME" "SCRN EDGE" "GIT" "DB CON2" "QUIT")
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
				client_file_path2="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path2
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
        "BU SQL")
          
		  echo "------------------"
            echo "SQL BU BACKUP"
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
				#client_file_path2="$(<./client_file_path2.txt)"
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
							#client_file_path2="$(<./client_file_path2.txt)"
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
							#client_file_path2="$(<./client_file_path2.txt)"
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
				#client_file_path2="$(<./client_file_path2.txt)"
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
							#client_file_path2="$(<./client_file_path2.txt)"
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
							#client_file_path2="$(<./client_file_path2.txt)"
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
		"SCRN BU HOME")
			echo "--------------------"
            echo "BU HOME SCREENSHOT"
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
			
			if [ -e "./screenshot_buhome.vbs" ]
				then
					echo "-------------------------"
					echo "STARTING PROCESS BU HOME SCREENSHOT"
					echo "-------------------------"
					cscript //nologo ./screenshot_buhome.vbs				
									
				else
					echo "-------------------------"
					echo "screenshot_buhome.vbs is not existing."
					echo "-------------------------"
					
				fi 
			#break
			
            ;;
        "SCRN UP HOME")
            echo "--------------------"
            echo "UP HOME SCREENSHOT"
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
			
			if [ -e "./screenshot_uphome.vbs" ]
				then
					echo "-------------------------"
					echo "STARTING PROCESS UP HOME SCREENSHOT"
					echo "-------------------------"
					cscript //nologo ./screenshot_uphome.vbs				
									
				else
					echo "-------------------------"
					echo "screenshot_buhome.vbs is not existing."
					echo "-------------------------"
					
				fi 		
			
			#break
			
            ;;
		
		"SCRN EMAIL")
           echo "--------------------"
            echo "EMAIL SCREENSHOT"
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
			
			if [ -e "./screenshot_email.vbs" ]
				then
					echo "-------------------------"
					echo "STARTING PROCESS EMAIL SCREENSHOT"
					echo "-------------------------"
					cscript //nologo ./screenshot_email.vbs				
									
				else
					echo "-------------------------"
					echo "screenshot_email.vbs is not existing."
					echo "-------------------------"
					
				fi 		
			
			#break
			
            ;;
		
		"SCRN VIEWFORM")
             echo "--------------------"
            echo "VIEWFORM SCREENSHOT"
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
			
			if [ -e "./screenshot_viewform.vbs" ]
				then
					echo "-------------------------"
					echo "STARTING PROCESS VIEWFORM SCREENSHOT"
					echo "-------------------------"
					cscript //nologo ./screenshot_viewform.vbs				
									
				else
					echo "-------------------------"
					echo "screenshot_viewform.vbs is not existing."
					echo "-------------------------"
					
				fi 		
			
            ;;
			
		"SCRN OFDP")
             echo "--------------------"
            echo "OFDP SCREENSHOT"
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
			
			if [ -e "./screenshot_ofdp.vbs" ]
				then
					echo "-------------------------"
					echo "STARTING PROCESS OFDP SCREENSHOT"
					echo "-------------------------"
					cscript //nologo ./screenshot_ofdp.vbs				
									
				else
					echo "-------------------------"
					echo "screenshot_ofdp.vbs is not existing."
					echo "-------------------------"
					
				fi 		
			
            ;;
			
			"SCRN ICOGNITO")
           echo "------------------"
            echo "SCREENSHOT INCOGNITO"
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
		   
		   read -p "Enter New screenshot name:" scrn_new  
			while [[ "${scrn_new}" == "" ]] ; do
			   read -p "Enter New screenshot name:" scrn_new 
			done  
			
			echo "$scrn_new" > ./scrn_newfile.txt 
			
			if [ -e "./textReplace.vbs" ]
			then
				cscript //nologo "textReplace.vbs" " " "-" ./scrn_newfile.txt
			else
				echo "$scrn_newfile file not found"
				cscript //nologo "./../../../../../textReplace.vbs" " " "-" ./scrn_newfile.txt
				
			fi
			
			 
			
			#_scrn_new="${scrn_new}" | sed -E 's/ /-/'
			#scrn_newfile=$_scrn_new".vbs"
						
			if [ -e "./scrn_newfile.txt" ]
			then
				scrn_newfile="$(<./scrn_newfile.txt)"
				echo $scrn_newfile".vbs"											
			else
				echo "$scrn_newfile file not found"
				
			fi
			
			#echo $scrn_newfile
			scrn_newfileA=$scrn_newfile".vbs"
			
		   if [ -e "./client_file_path2.txt" ]
			then
				client_file_path2="$(<./client_file_path2.txt)"
				cd $client_file_path2
				cp ../../../../../screenshot_incognito.vbs $scrn_newfileA 
			else
				echo "path not found"
				#cd ./$folderB/$myfolderA/$client_web
				cp ../../../../../screenshot_incognito.vbs $scrn_newfileA

			fi
						
			#cp ../../../../../screenshot.vbs "$scrn_newfile"
			
			if [ -e ./$scrn_newfileA ]
				then
				
				if [ -e "./client_dir.txt" ]
					then
						client_dir="$(<./client_dir.txt)"
																							
					else
						echo "file not found"
						#cd ./$folderB/$myfolderA/$client_web

					fi
				
				scrn_directory=$client_dir'\screenshot'
				cscript //nologo "./../../../../../textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory'\'$scrn_newfile"' --fullpage" ./$scrn_newfileA
				
				cscript //nologo ./$scrn_newfileA
								
									
				else
					echo "$scrn_new.vbs is not existing."
					cd ../../../../../
									
				fi 	
			
									
            ;;
			
		"SCRN NEW")
          		
			echo "------------------"
            echo "SCREENSHOT NEW"
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
		   
		   read -p "Enter New screenshot name:" scrn_new  
			while [[ "${scrn_new}" == "" ]] ; do
			   read -p "Enter New screenshot name:" scrn_new 
			done  
			
			echo "$scrn_new" > ./scrn_newfile.txt 
			
			if [ -e "./textReplace.vbs" ]
			then
				cscript //nologo "textReplace.vbs" " " "-" ./scrn_newfile.txt
			else
				echo "$scrn_newfile file not found"
				cscript //nologo "./../../../../../textReplace.vbs" " " "-" ./scrn_newfile.txt
				
			fi
			
			 
			
			#_scrn_new="${scrn_new}" | sed -E 's/ /-/'
			#scrn_newfile=$_scrn_new".vbs"
						
			if [ -e "./scrn_newfile.txt" ]
			then
				scrn_newfile="$(<./scrn_newfile.txt)"
				echo $scrn_newfile".vbs"											
			else
				echo "$scrn_newfile file not found"
				
			fi
			
			#echo $scrn_newfile
			scrn_newfileA=$scrn_newfile".vbs"
			
		   if [ -e "./client_file_path2.txt" ]
			then
				client_file_path2="$(<./client_file_path2.txt)"
				cd $client_file_path2
				cp ../../../../../screenshot.vbs $scrn_newfileA 
			else
				echo "path not found"
				#cd ./$folderB/$myfolderA/$client_web
				cp ../../../../../screenshot.vbs $scrn_newfileA

			fi
						
			#cp ../../../../../screenshot.vbs "$scrn_newfile"
			
			if [ -e ./$scrn_newfileA ]
				then
				
				if [ -e "./client_dir.txt" ]
					then
						client_dir="$(<./client_dir.txt)"
																							
					else
						echo "file not found"
						#cd ./$folderB/$myfolderA/$client_web

					fi
				
				scrn_directory=$client_dir'\screenshot'
				cscript //nologo "./../../../../../textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory'\'$scrn_newfile"' --fullpage" ./$scrn_newfileA
				
				cscript //nologo ./$scrn_newfileA
								
									
				else
					echo "$scrn_new.vbs is not existing."
					cd ../../../../../
									
				fi 	
						
            ;;
			
			"SCRN CHROME")
           echo "--------------------"
            echo "CHROME SCREENSHOT"
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
			
			if [ -e "./scrn_chrome.sh" ]
				then
					echo "-------------------------"
					echo "Starting Chrome screenshot"
					echo "-------------------------"
					./scrn_chrome.sh				
									
				else
					echo "-------------------------"
					echo "Searching file scrn_chrome.sh"
					echo "Change directory to main"
					echo "-------------------------"
					cd ../../../../../
					./scrn_chrome.sh	
					
				fi 
			
            ;;
			
			"SCRN EDGE")
           echo "--------------------"
            echo "EDGE SCREENSHOT"
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
			
			if [ -e "./scrn_edge.sh" ]
				then
				echo "-------------------------"
				echo "Starting Edge Screenshot"
				echo "-------------------------"
					./scrn_edge.sh				
									
				else
					echo "-------------------------"
					echo "Change directory to main"
					echo "-------------------------"
					cd ../../../../../
					./scrn_edge.sh	
					
				fi 
			
            ;;
			
		"GIT")
           echo "--------------------"
            echo "EDGE SCREENSHOT"
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
			
			#--------------------------------------------
			
			PS3='Select TASK: '
options=("GIT REPO" "GIT CLONE" "GIT ADD ALL FILES BU" "GIT ADD ALL FILES UP" "GIT LOG" "CHANGE REPO" "DEL GIT" "SCRN GIT" "QUIT")
select opt in "${options[@]}"
do 
    case $opt in
        "GIT REPO")
            echo "you chose choice $REPLY $opt"
			#git_file_path
			
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
						
			if [ -e "./git_file_path.txt" ]
			then
				git_file_path="$(<./git_file_path.txt)"
				#cd $client_file_path
				echo "------------------------------"
				echo "Git Repository: $git_file_path"
				echo "------------------------------"
				
				read -p "Enter Git folder name:" git_dir_path 
				while [[ "${git_dir_path}" == "" ]] ; do
				   read -p "Enter Git folder name:" git_dir_path 
				done
				echo "$git_dir_path" > git_dir_path.txt
				
			else
				echo "Git file not found"
				
				read -p "Enter Git file path:" git_file_path 
				while [[ "${git_file_path}" == "" ]] ; do
				   read -p "Enter Git file path:" git_file_path 
				done
				echo "$git_file_path" > git_file_path.txt 
				
				read -p "Enter Git folder name:" git_dir_path 
				while [[ "${git_dir_path}" == "" ]] ; do
				   read -p "Enter Git folder name:" git_dir_path 
				done
				echo "$git_dir_path" > git_dir_path.txt
				
			fi
			
						
			git init
			git remote add origin $git_file_path
			
			#echo "$git_file_path" > git_file_path.txt
				
			#break
            ;;
        "GIT CLONE")
			echo "--------------------------"
            echo "You chose choice $REPLY $opt"
			echo "STARTING CLONE PROCESS"
			echo "--------------------------"
			
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
									
			if [ -e "./git_file_path.txt" ]; then
				echo ""
				
				git_dir_path="$(<./git_dir_path.txt)"
				if [ ! -d ./$git_dir_path ]; then
					echo "Repository Directory not exist"
					#git clone $git_file_path_clone
					
				else
					echo "--------------------------"
					echo "Repository directory existing"
					
					echo "--------------------------"
					
					date +%s > date_txt.txt 
					date_txt="$(<./date_txt.txt)"
					mv $git_dir_path $git_dir_path"_$date_txt.old"
					
					
					echo "Git folder has been renamed to "$git_dir_path"_$date_txt.old"
					echo "--------------------------"
				fi 
				
			else
				echo "--------------------------"
				echo "File not found."
				echo "--------------------------"
			fi 
			
			if [ -e "./git_file_path.txt" ]
			then
				echo "--------------------------"
				echo "git path config existing"
				git_file_path_clone="$(<./git_file_path.txt)"
				echo "--------------------------"
				echo "git clone $git_file_path_clone"
				echo "--------------------------"
				git clone $git_file_path_clone 
				
			else
				echo "--------------------------"
				echo "Git remote repository path not existing."
				echo "Please add repository first."
				echo "--------------------------"
			fi 
			
			#break
			
            ;;
		"GIT ADD ALL FILES BU")
			echo "--------------------------"
            echo "you chose choice $REPLY $opt"
			echo "STARTING GIT PUSH BU"
			echo "--------------------------"
			
			#git add . && git commit -m ' 177446985 - bu ' && git push origin master
			
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
				cd ../../../../../
				cd ./data-main
				client_file_path2="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path2

			fi
									
			#./git_bu2.sh 
			
			#git_task_id="$(<./task_ID.txt)"
			
			
			
			if [ -e "./git_file_path.txt" ]
				then
				git_file_path="$(<./git_file_path.txt)"
				echo $git_file_path
				
				if [ -e "./task_ID.txt" ]
				then
					echo "task_ID.txt existing"
					git_task_id="$(<./task_ID.txt)"
					#echo $git_task_id
					
					if [ -e "./git_dir_path.txt" ]
					then 
						echo "git_dir_path.txt is existing"
						git_dir_path="$(<./git_dir_path.txt)"
						echo "TEST DIR::: $git_dir_path"
						
						if [ ! -d $git_dir_path ]; then
						echo "Repository Directory not exist"
						
						else
							echo "--------------------------"
							echo "STARTING GIT PUSH PROCESS"
							echo "git push -u origin master"
							echo "--------------------------"
							
							
							cd ./../../../../../
							#./git_bu2.sh
							#-----------------------------------------------------
							
							#!/bin/bash

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
			
			if [ -e "./db_name.txt" ]
			then
				db_name="$(<./db_name.txt)"
				#client_file_path="$(<./client_file_path.txt)"
				if [ -e "./bu/$db_name" ]
				then
					echo "-------------------------"
					echo "The file is existing"
					echo "-------------------------"
					git_dir_path="$(<./git_dir_path.txt)"
																		
					if [ ! -d $git_dir_path/db ]; then
						mkdir -p ./$git_dir_path/db
					else 
						echo "-------------------------"
						echo "Directory bu is existing"
						echo "-------------------------"
					fi
			
					cp ./bu/$db_name ./$git_dir_path/db/$db_name 
					echo "Move file successfuly to Directory bu folder" 
					#cd ../../../../../
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
							
							if [ -e "./bu/$db_name" ]
							then
								echo "-------------------------"
								echo "The file is existing"
								echo "-------------------------"
								git_dir_path="$(<./git_dir_path.txt)"
								
								if [ ! -d $git_dir_path ]; then
									mkdir -p ./$git_dir_path/db
								else 
									echo "-------------------------"
									echo "Directory bu is existing"
									echo "-------------------------"
								fi 
								
								if [ ! -d $git_dir_path/db ]; then
									mkdir -p ./$git_dir_path/db
								else 
									echo "-------------------------"
									echo "Directory bu is existing"
									echo "-------------------------"
								fi 
								
								
								cp -rf ./bu/$db_name ./$git_dir_path/db/$db_name 
								echo "Move file successfuly to Directory bu folder" 
								
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
							if [ -e "./bu/$db_name" ]
							then
								echo "-------------------------"
								echo "The file is existing"
								echo "-------------------------"
								git_dir_path="$(<./git_dir_path.txt)"
								
								if [ ! -d $git_dir_path ]; then
										echo "-------------------------"
										echo "Directory $git_dir_path is not existing"
										echo "-------------------------"
								else 
									echo "-------------------------"
									echo "Directory $git_dir_path is existing"
									echo "-------------------------"
									
									if [ ! -d $git_dir_path/db ]; then
										mkdir -p ./$git_dir_path/db
									else 
										echo "-------------------------"
										echo "Directory bu is existing"
										echo "-------------------------"
									fi 
									
									
									cp -rf ./bu/$db_name ./$git_dir_path/db/$db_name 
									echo "-------------------------"
									echo "Move file successfuly to Directory db folder"
									echo "-------------------------"
									
								fi 
																 								
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
			
			
			git_dir_path="$(<./git_dir_path.txt)"
			themes_pathA=./bu/$git_dir_path
			forms_pathA=./bu/forms
			onlineforms_pathA=./bu/onlineforms
			
			wp_adminA=./bu/wp-admin
			wp_includesA=./bu/wp-includes
			wp_systconA=./bu/wp-systcon
						
			themes_pathB=$git_dir_path/wp-content/themes/$git_dir_path
			forms_pathB=$git_dir_path/wp-content/themes/$git_dir_path/forms
			onlineforms_pathB=$git_dir_path/onlineforms
			
			wp_adminB=$git_dir_path/wp-admin
			wp_includesB=$git_dir_path/wp-includes
			wp_systconB=$git_dir_path/wp-systcon 
			
			if [ ! -d $themes_pathA ]; then
				echo "-------------------------"
				echo "Directory $themes_pathA is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
			else 
				echo "-------------------------"
				echo "Directory $themes_pathA is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/wp-content ]; then
					echo "Directory wp-content is not existing"
					mkdir -p ./$git_dir_path/$git_dir_path
					cp -rf $themes_pathA/* ./$git_dir_path/$git_dir_path
					#cp -rf /path/to/data/* /path/to/backbu/
					echo "Copy file successfuly to Directory bu folder"
					
				else
					echo "-------------------------"
					echo "Directory wp-content is existing"
					echo "-------------------------"
				
				fi 
				
				if [ ! -d $git_dir_path/wp-content/themes ]; then
					#mkdir -p ./$git_dir_path/wp-content/themes
					echo "Themes directory is not existing"
				else
					echo "-------------------------"
					echo "Directory themes is existing"
					echo "-------------------------"
				
				fi
				
				if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path ]; then
					#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path
					echo "-------------------------"
					echo "Directory themes is not existing"
					echo "-------------------------"
					
				else
					echo "-------------------------"
					echo "Directory bu is existing"
					echo "-------------------------"
					
					cp -rf $themes_pathA/* $themes_pathB 
					#cp -rf /path/to/data/* /path/to/backbu/
					echo "Copy file successfuly to Directory $themes_pathB folder"
				
				fi
				
				
			
			fi 
			
			if [ ! -d $forms_pathA ]; then
				echo "-------------------------"
				echo "Directory forms is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
				
			else 
				echo "-------------------------"
				echo "Directory forms is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/wp-content ]; then
				echo "-------------------------"
					echo "Directory wp-content is not existing"
					echo "-------------------------"
					mkdir -p ./$git_dir_path/forms
					cp -rf $forms_pathA/* ./$git_dir_path/forms
					#cp -rf /path/to/data/* /path/to/backbu/
					echo "Copy file successfuly to Directory $forms_pathB folder"
					
				else
					echo "-------------------------"
					echo "Directory bu is existing"
					echo "-------------------------"
				
				fi 
				
				if [ ! -d $git_dir_path/wp-content/themes ]; then
				echo "-------------------------"
					echo "Directory themes is not existing"
					echo "-------------------------"
					#mkdir -p ./$git_dir_path/wp-content/themes
					
				else
					echo "-------------------------"
					echo "Directory forms is existing"
					echo "-------------------------"
				
				fi
				
				if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path ]; then
				echo "-------------------------"
					echo "Directory themes is not existing"
					echo "-------------------------"
					#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path
				else
					echo "-------------------------"
					echo "Directory forms is existing"
					echo "-------------------------"
				
				fi
				
				if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path/forms ]; then
				echo "-------------------------"
					echo "Directory forms is not existing"
					echo "-------------------------"
					#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
				else
					echo "-------------------------"
					echo "Directory forms is existing"
					echo "-------------------------"
					
					cp -rf $forms_pathA/* $forms_pathB 
					#cp -rf /path/to/data/* /path/to/backbu/
					echo "Copy file successfuly to Directory $forms_pathB folder"
				
				fi
				
				
			
			fi
			
			if [ ! -d $onlineforms_pathA ]; then
				echo "-------------------------"
				echo "Directory onlineforms is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
			else 
				echo "-------------------------"
				echo "Directory $onlineforms_pathA is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/onlineforms ]; then
					mkdir -p ./$git_dir_path/onlineforms
				else
					echo "-------------------------"
					echo "Directory $onlineforms_pathA is existing"
					echo "-------------------------"
				
				fi 
				
				cp -rf $onlineforms_pathA/* $onlineforms_pathB 
				#cp -rf /path/to/data/* /path/to/backbu/
				echo "Copy file successfuly to Directory bu folder"
			
			fi
			
			if [ ! -d $wp_adminA ]; then
				echo "-------------------------"
				echo "Directory $wp_admin is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
			else 
				echo "-------------------------"
				echo "Directory $wp_adminB is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/wp-admin ]; then
					mkdir -p ./$git_dir_path/wp-admin
					echo "-------------------------"
					echo "Directory $wp_adminB is not existing"
					echo "-------------------------"
				else
					echo "-------------------------"
					echo "Directory $wp_adminB is existing"
					echo "-------------------------"
				
				fi 
				
				cp -rf $wp_adminA/* $wp_adminB 
				#cp -rf /path/to/data/* /path/to/backbu/
				echo "Copy file successfuly to Directory $wp_adminB folder"
			
			fi
			
			if [ ! -d $wp_includesA ]; then
				echo "-------------------------"
				echo "Directory $wp_includesA is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
			else 
				echo "-------------------------"
				echo "Directory $wp_includesA is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/wp-includes ]; then
					mkdir -p ./$git_dir_path/wp-includes
					echo "-------------------------"
					echo "Directory $wp_includesB is not existing"
					echo "-------------------------"
				else
					echo "-------------------------"
					echo "Directory $wp_includesB is existing"
					echo "-------------------------"
				
				fi 
				
				cp -rf $wp_includesA/* $wp_includesB 
				#cp -rf /path/to/data/* /path/to/backbu/
				echo "Copy file successfuly to Directory $wp_includesB folder"
			
			fi
			
			if [ ! -d $wp_systconA ]; then
				echo "-------------------------"
				echo "Directory $wp_systconA is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
			else 
				echo "-------------------------"
				echo "Directory $wp_systconA is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/wp-systcon ]; then
					mkdir -p ./$git_dir_path/wp-systcon
					echo "-------------------------"
					echo "Directory $wp_systconB is not existing"
					echo "-------------------------"
				else
					echo "-------------------------"
					echo "Directory $wp_systconB is existing"
					echo "-------------------------"
				
				fi 
				
				cp -rf $wp_systconA/* $wp_systconB 
				#cp -rf /path/to/data/* /path/to/backbu/
				echo "Copy file successfuly to Directory $wp_systconB folder"
			
			fi


			
			
			 
							
							
							
							
							
							
							#-----------------------------------------------------
							cd $client_file_path2
							cd $git_dir_path
							
							git add .
							git commit -m " $git_task_id - BU "
							git push -u origin master	
							
							cd ../
							
						fi 
						
					else 
						echo "git_dir_path.txt is not existing"
						git_dir_path="$(<./git_dir_path.txt)"
						echo "TEST DIR::: $git_dir_path"
					fi 
					
					
									
				else
					echo "--------------------------"
					echo "task_ID.txt not existing."
					echo "Please add repository first."
					echo "--------------------------"
				fi 
				
				
			else 
				echo "--------------------------"
				echo "Git remote repository path not existing."
				echo "Please add repository first."
				echo "--------------------------"
			
			fi 
			#break
			
            ;;
		"GIT ADD ALL FILES UP")
			echo "--------------------------"
            echo "you chose choice $REPLY $opt"
			echo "STARTING GIT PUSH UP"
			echo "--------------------------"
			#git add . && git commit -m ' 177446985 - bu ' && git push origin master
			
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
			
			#git_task_id="$(<./task_ID.txt)"
			#./git_up.sh 
			
			if [ -e "./git_file_path.txt" ]
				then
				git_file_path="$(<./git_file_path.txt)"
				echo $git_file_path
				
				if [ -e "./task_ID.txt" ]
				then
					echo "task_ID.txt existing"
					git_task_id="$(<./task_ID.txt)"
					#echo $git_task_id
					
					if [ -e "./git_dir_path.txt" ]
					then 
						echo "git_dir_path.txt is existing"
						git_dir_path="$(<./git_dir_path.txt)"
						echo "TEST DIR::: $git_dir_path"
						
						if [ ! -d $git_dir_path ]; then
						echo "Repository Directory not exist"
						
						else
							echo "--------------------------"
							echo "STARTING GIT PUSH PROCESS"
							echo "git push -u origin master"
							echo "--------------------------"
							
							#./../../../../../git_up.sh
							cd ./../../../../../
							#./git_up.sh
							#--------------------------------------------
							
							#!/bin/bash

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
			
			if [ -e "./db_name.txt" ]
			then
				db_name="$(<./db_name.txt)"
				#client_file_path="$(<./client_file_path.txt)"
				if [ -e "./up/$db_name" ]
				then
					echo "-------------------------"
					echo "The file is existing"
					echo "-------------------------"
					git_dir_path="$(<./git_dir_path.txt)"
																		
					if [ ! -d $git_dir_path/db ]; then
						mkdir -p ./$git_dir_path/db
					else 
						echo "-------------------------"
						echo "Directory up is existing"
						echo "-------------------------"
					fi
			
					cp ./up/$db_name ./$git_dir_path/db/$db_name 
					echo "Move file successfuly to Directory up folder" 
					#cd ../../../../../
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
							
							if [ -e "./up/$db_name" ]
							then
								echo "-------------------------"
								echo "The file is existing"
								echo "-------------------------"
								git_dir_path="$(<./git_dir_path.txt)"
								
								if [ ! -d $git_dir_path ]; then
									mkdir -p ./$git_dir_path/db
								else 
									echo "-------------------------"
									echo "Directory up is existing"
									echo "-------------------------"
								fi 
								
								if [ ! -d $git_dir_path/db ]; then
									mkdir -p ./$git_dir_path/db
								else 
									echo "-------------------------"
									echo "Directory up is existing"
									echo "-------------------------"
								fi 
								
								
								cp -rf ./up/$db_name ./$git_dir_path/db/$db_name 
								echo "Move file successfuly to Directory up folder" 
								
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
							if [ -e "./up/$db_name" ]
							then
								echo "-------------------------"
								echo "The file is existing"
								echo "-------------------------"
								git_dir_path="$(<./git_dir_path.txt)"
								
								if [ ! -d $git_dir_path ]; then
										echo "-------------------------"
										echo "Directory $git_dir_path is not existing"
										echo "-------------------------"
								else 
									echo "-------------------------"
									echo "Directory $git_dir_path is existing"
									echo "-------------------------"
									
									if [ ! -d $git_dir_path/db ]; then
										mkdir -p ./$git_dir_path/db
									else 
										echo "-------------------------"
										echo "Directory up is existing"
										echo "-------------------------"
									fi 
									
									
									cp -rf ./up/$db_name ./$git_dir_path/db/$db_name 
									echo "-------------------------"
									echo "Move file successfuly to Directory db folder"
									echo "-------------------------"
									
								fi 
																 								
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
			
			
			git_dir_path="$(<./git_dir_path.txt)"
			themes_pathA=./up/$git_dir_path
			forms_pathA=./up/forms
			onlineforms_pathA=./up/onlineforms
			
			wp_adminA=./up/wp-admin
			wp_includesA=./up/wp-includes
			wp_systconA=./up/wp-systcon
						
			themes_pathB=$git_dir_path/wp-content/themes/$git_dir_path
			forms_pathB=$git_dir_path/wp-content/themes/$git_dir_path/forms
			onlineforms_pathB=$git_dir_path/onlineforms
			
			wp_adminB=$git_dir_path/wp-admin
			wp_includesB=$git_dir_path/wp-includes
			wp_systconB=$git_dir_path/wp-systcon 
			
			if [ ! -d $themes_pathA ]; then
				echo "-------------------------"
				echo "Directory $themes_pathA is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
			else 
				echo "-------------------------"
				echo "Directory $themes_pathA is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/wp-content ]; then
					echo "Directory wp-content is not existing"
					mkdir -p ./$git_dir_path/$git_dir_path
					cp -rf $themes_pathA/* ./$git_dir_path/$git_dir_path
					#cp -rf /path/to/data/* /path/to/backup/
					echo "Copy file successfuly to Directory up folder"
					
				else
					echo "-------------------------"
					echo "Directory wp-content is existing"
					echo "-------------------------"
				
				fi 
				
				if [ ! -d $git_dir_path/wp-content/themes ]; then
					#mkdir -p ./$git_dir_path/wp-content/themes
					echo "Themes directory is not existing"
				else
					echo "-------------------------"
					echo "Directory themes is existing"
					echo "-------------------------"
				
				fi
				
				if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path ]; then
					#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path
					echo "-------------------------"
					echo "Directory themes is not existing"
					echo "-------------------------"
					
				else
					echo "-------------------------"
					echo "Directory up is existing"
					echo "-------------------------"
					
					cp -rf $themes_pathA/* $themes_pathB 
					#cp -rf /path/to/data/* /path/to/backup/
					echo "Copy file successfuly to Directory $themes_pathB folder"
				
				fi
				
				
			
			fi 
			
			if [ ! -d $forms_pathA ]; then
				echo "-------------------------"
				echo "Directory forms is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
				
			else 
				echo "-------------------------"
				echo "Directory forms is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/wp-content ]; then
				echo "-------------------------"
					echo "Directory wp-content is not existing"
					echo "-------------------------"
					mkdir -p ./$git_dir_path/forms
					cp -rf $forms_pathA/* ./$git_dir_path/forms
					#cp -rf /path/to/data/* /path/to/backup/
					echo "Copy file successfuly to Directory $forms_pathB folder"
					
				else
					echo "-------------------------"
					echo "Directory up is existing"
					echo "-------------------------"
				
				fi 
				
				if [ ! -d $git_dir_path/wp-content/themes ]; then
				echo "-------------------------"
					echo "Directory themes is not existing"
					echo "-------------------------"
					#mkdir -p ./$git_dir_path/wp-content/themes
					
				else
					echo "-------------------------"
					echo "Directory forms is existing"
					echo "-------------------------"
				
				fi
				
				if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path ]; then
				echo "-------------------------"
					echo "Directory themes is not existing"
					echo "-------------------------"
					#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path
				else
					echo "-------------------------"
					echo "Directory forms is existing"
					echo "-------------------------"
				
				fi
				
				if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path/forms ]; then
				echo "-------------------------"
					echo "Directory forms is not existing"
					echo "-------------------------"
					#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
				else
					echo "-------------------------"
					echo "Directory forms is existing"
					echo "-------------------------"
					
					cp -rf $forms_pathA/* $forms_pathB 
					#cp -rf /path/to/data/* /path/to/backup/
					echo "Copy file successfuly to Directory $forms_pathB folder"
				
				fi
				
				
			
			fi
			
			if [ ! -d $onlineforms_pathA ]; then
				echo "-------------------------"
				echo "Directory onlineforms is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
			else 
				echo "-------------------------"
				echo "Directory $onlineforms_pathA is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/onlineforms ]; then
					mkdir -p ./$git_dir_path/onlineforms
				else
					echo "-------------------------"
					echo "Directory $onlineforms_pathA is existing"
					echo "-------------------------"
				
				fi 
				
				cp -rf $onlineforms_pathA/* $onlineforms_pathB 
				#cp -rf /path/to/data/* /path/to/backup/
				echo "Copy file successfuly to Directory up folder"
			
			fi
			
			if [ ! -d $wp_adminA ]; then
				echo "-------------------------"
				echo "Directory $wp_admin is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
			else 
				echo "-------------------------"
				echo "Directory $wp_adminB is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/wp-admin ]; then
					mkdir -p ./$git_dir_path/wp-admin
					echo "-------------------------"
					echo "Directory $wp_adminB is not existing"
					echo "-------------------------"
				else
					echo "-------------------------"
					echo "Directory $wp_adminB is existing"
					echo "-------------------------"
				
				fi 
				
				cp -rf $wp_adminA/* $wp_adminB 
				#cp -rf /path/to/data/* /path/to/backup/
				echo "Copy file successfuly to Directory $wp_adminB folder"
			
			fi
			
			if [ ! -d $wp_includesA ]; then
				echo "-------------------------"
				echo "Directory $wp_includesA is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
			else 
				echo "-------------------------"
				echo "Directory $wp_includesA is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/wp-includes ]; then
					mkdir -p ./$git_dir_path/wp-includes
					echo "-------------------------"
					echo "Directory $wp_includesB is not existing"
					echo "-------------------------"
				else
					echo "-------------------------"
					echo "Directory $wp_includesB is existing"
					echo "-------------------------"
				
				fi 
				
				cp -rf $wp_includesA/* $wp_includesB 
				#cp -rf /path/to/data/* /path/to/backup/
				echo "Copy file successfuly to Directory $wp_includesB folder"
			
			fi
			
			if [ ! -d $wp_systconA ]; then
				echo "-------------------------"
				echo "Directory $wp_systconA is not existing"
				echo "-------------------------"
				#mkdir -p ./$git_dir_path/db
			else 
				echo "-------------------------"
				echo "Directory $wp_systconA is existing"
				echo "-------------------------"
				
				if [ ! -d $git_dir_path/wp-systcon ]; then
					mkdir -p ./$git_dir_path/wp-systcon
					echo "-------------------------"
					echo "Directory $wp_systconB is not existing"
					echo "-------------------------"
				else
					echo "-------------------------"
					echo "Directory $wp_systconB is existing"
					echo "-------------------------"
				
				fi 
				
				cp -rf $wp_systconA/* $wp_systconB 
				#cp -rf /path/to/data/* /path/to/backup/
				echo "Copy file successfuly to Directory $wp_systconB folder"
			
			fi


			
			
			 
							
							
							
							
							#--------------------------------------------
							cd $client_file_path2
							cd $git_dir_path
							
							git add .
							git commit -m " $git_task_id - UP "
							git push -u origin master	
							
							cd ../
							
						fi 
						
					else 
						echo "git_dir_path.txt is not existing"
						git_dir_path="$(<./git_dir_path.txt)"
						echo "TEST DIR::: $git_dir_path"
					fi 
					
					
									
				else
					echo "--------------------------"
					echo "task_ID.txt not existing."
					echo "Please add repository first."
					echo "--------------------------"
				fi 
				
				
			else 
				echo "--------------------------"
				echo "Git remote repository path not existing."
				echo "Please add repository first."
				echo "--------------------------"
			
			fi 
			#break
			
            ;;
			
		"GIT LOG")
            echo "you chose choice $REPLY $opt"
			start snippingtool 	
			
			if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path2="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path2
				if [ -e "./scrn_gitv3.sh" ]
				then 
					echo ""
					#./scrn_gitv3.sh
					#----------------------------------------------
					
					
					#!/bin/bash 
#chmod u+x run_all.sh 

			echo "----------------------------"
            echo "SCREENSHOT WINDOW"
			echo "----------------------------"
			
			if [ -e "./screenshot_path.txt" ]
			then 
				echo "----------------------------"
				echo "screenshot_path.txt is existing"
				echo "----------------------------"
				
				screenshot_path="$(<./screenshot_path.txt)"
												
				if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path2="$(<./${client_web}_path.txt)"
				cd ../
					echo $screenshot_path > ./$client_file_path2/scrn_wfile_path.txt
					
					echo "----------------------------"
					echo "Screenshot Windows"
					echo "----------------------------"
					
					read -p "Enter Window Title:" window_title  
					#echo "The client name: " $client_name

					while [[ "${window_title}" == "" ]] ; do
					   read -p "Enter Window Title:" window_title  
					done
					
					scrn_window="git-log"
					#read -p "Enter Screenshot filename: " scrn_window 
								
					#while [[ "${scrn_window}" == "" ]] ; do
					#   read -p "Enter Screenshot filename: " scrn_window 
					#done
					if [ -e "./textReplace.vbs" ]
					then
						
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						cd $client_file_path2
						scrn_windowA="$(<./scrn_git.txt)"
						cd ../../../../../
					
					else
						
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						cd $client_file_path2
						scrn_windowA="$(<./scrn_git.txt)"
						cd ../../../../../
						
					fi 
										
					if [ -e "./$client_file_path2/screenshot_git.vbs" ]
					then
						echo "$client_file_path2/screenshot_git.vbs is already existing"
						cd ./data-main
						client_file_path2="$(<./${client_web}_path.txt)"
						cd ../
											
						cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						
												
						if [ -e "./$client_file_path2/scrn_wfile_path.txt" ]
						then
							echo ""
							cd $client_file_path2
							scrn_path="$(<./scrn_wfile_path.txt)"
							cd ../../../../../
													
						else 
							echo ""
							
							cd $client_file_path2
							
							screenshot_path="$(<./screenshot_path.txt)"
							echo $screenshot_path > ./$client_file_path2/scrn_wfile_path.txt
							cd $client_file_path2
							scrn_path="$(<.scrn_wfile_path.txt)"
							cd ../../../../../
							
							
						fi 
					
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					else 
						echo "COPYING screenshot_window.vbs"
						
						echo "screenshot_window.vbs is already existing"
						cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						
						screenshot_path="$(<./screenshot_path.txt)"
							echo $screenshot_path > ./$client_file_path2/scrn_wfile_path.txt
							scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
							
							
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					fi 
			
				else 
				
					echo "----------------------------"
					echo "client_file_path.txt is not existing"
					echo "----------------------------"
				
				fi 
							
			else
				echo "----------------------------"
				echo "screenshot_path.txt is not existing"
				echo "----------------------------"
				
				if [ -e "./data-main/${client_web}_path.txt" ]
				then
					cd ./data-main
					client_file_path2="$(<./${client_web}_path.txt)"
					cd ../
					
					echo $client_file_path2 > srn_directory.txt 
					cscript //nologo ./textReplace.vbs "./" "" ./srn_directory.txt
					cscript //nologo ./textReplace.vbs "//" "\\" ./srn_directory.txt
					mydirectory="$(<./mydirectory.txt)"
					srn_directory="$(<./srn_directory.txt)"
					#echo "1"
					echo $mydirectory\\$srn_directory\screenshot > ./$client_file_path2/scrn_wfile_path.txt
					scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
					echo $scrn_path
										
					#cd $client_file_path
					
					echo $mydirectory\\$srn_directory\screenshot > ./$client_file_path2/scrn_wfile_path.txt
					
					if [ -e "./textReplace.vbs" ]
					then
						
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						
						scrn_windowA="$(<./$client_file_path2/scrn_window.txt)"
					
					else
						cd $client_file_path2
												
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						
						scrn_windowA="$(<./$client_file_path2/scrn_git.txt)"
					
					fi 
										
					if [ -e "./$client_file_path2/screenshot_git.vbs" ]
					then
						echo "$client_file_path2/screenshot_git.vbs is already existing"
						#cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cd $client_file_path
						
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					else 
						echo "COPYING screenshot_window.vbs"
										
						echo "screenshot_window.vbs is already existing"
						cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					fi 
					
					
					
				else 
					echo "----------------------------"
					echo "path not found"
					echo "----------------------------"
					

				fi
				
						
				
				
			
			fi
			
		   
						
			
					
					
					#----------------------------------------------
				else 
					echo ""
					cd ../../../../../
					#./scrn_gitv3.sh
					#----------------------------------------------
					
					
					#!/bin/bash 
#chmod u+x run_all.sh 

			echo "----------------------------"
            echo "SCREENSHOT WINDOW"
			echo "----------------------------"
			
			if [ -e "./screenshot_path.txt" ]
			then 
				echo "----------------------------"
				echo "screenshot_path.txt is existing"
				echo "----------------------------"
				
				screenshot_path="$(<./screenshot_path.txt)"
												
				if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path2="$(<./${client_web}_path.txt)"
				cd ../
					echo $screenshot_path > ./$client_file_path2/scrn_wfile_path.txt
					
					echo "----------------------------"
					echo "Screenshot Windows"
					echo "----------------------------"
					
					read -p "Enter Window Title:" window_title  
					#echo "The client name: " $client_name

					while [[ "${window_title}" == "" ]] ; do
					   read -p "Enter Window Title:" window_title  
					done
					
					scrn_window="git-log"
					#read -p "Enter Screenshot filename: " scrn_window 
								
					#while [[ "${scrn_window}" == "" ]] ; do
					#   read -p "Enter Screenshot filename: " scrn_window 
					#done
					if [ -e "./textReplace.vbs" ]
					then
						
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						cd $client_file_path2
						scrn_windowA="$(<./scrn_git.txt)"
						cd ../../../../../
					
					else
						
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						cd $client_file_path2
						scrn_windowA="$(<./scrn_git.txt)"
						cd ../../../../../
						
					fi 
										
					if [ -e "./$client_file_path2/screenshot_git.vbs" ]
					then
						echo "$client_file_path2/screenshot_git.vbs is already existing"
						cd ./data-main
						client_file_path2="$(<./${client_web}_path.txt)"
						cd ../
											
						cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						
												
						if [ -e "./$client_file_path2/scrn_wfile_path.txt" ]
						then
							echo ""
							cd $client_file_path2
							scrn_path="$(<./scrn_wfile_path.txt)"
							cd ../../../../../
													
						else 
							echo ""
							
							cd $client_file_path2
							
							screenshot_path="$(<./screenshot_path.txt)"
							echo $screenshot_path > ./$client_file_path2/scrn_wfile_path.txt
							cd $client_file_path2
							scrn_path="$(<.scrn_wfile_path.txt)"
							cd ../../../../../
							
							
						fi 
					
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					else 
						echo "COPYING screenshot_window.vbs"
						
						echo "screenshot_window.vbs is already existing"
						cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						
						screenshot_path="$(<./screenshot_path.txt)"
							echo $screenshot_path > ./$client_file_path2/scrn_wfile_path.txt
							scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
							
							
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					fi 
			
				else 
				
					echo "----------------------------"
					echo "client_file_path.txt is not existing"
					echo "----------------------------"
				
				fi 
							
			else
				echo "----------------------------"
				echo "screenshot_path.txt is not existing"
				echo "----------------------------"
				
				if [ -e "./data-main/${client_web}_path.txt" ]
				then
					cd ./data-main
					client_file_path2="$(<./${client_web}_path.txt)"
					cd ../
					
					echo $client_file_path2 > srn_directory.txt 
					cscript //nologo ./textReplace.vbs "./" "" ./srn_directory.txt
					cscript //nologo ./textReplace.vbs "//" "\\" ./srn_directory.txt
					mydirectory="$(<./mydirectory.txt)"
					srn_directory="$(<./srn_directory.txt)"
					#echo "1"
					echo $mydirectory\\$srn_directory\screenshot > ./$client_file_path2/scrn_wfile_path.txt
					scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
					echo $scrn_path
										
					#cd $client_file_path
					
					echo $mydirectory\\$srn_directory\screenshot > ./$client_file_path2/scrn_wfile_path.txt
					
					if [ -e "./textReplace.vbs" ]
					then
						
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						
						scrn_windowA="$(<./$client_file_path2/scrn_window.txt)"
					
					else
						cd $client_file_path2
												
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						
						scrn_windowA="$(<./$client_file_path2/scrn_git.txt)"
					
					fi 
										
					if [ -e "./$client_file_path2/screenshot_git.vbs" ]
					then
						echo "$client_file_path2/screenshot_git.vbs is already existing"
						#cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cd $client_file_path
						
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					else 
						echo "COPYING screenshot_window.vbs"
										
						echo "screenshot_window.vbs is already existing"
						cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					fi 
					
					
					
				else 
					echo "----------------------------"
					echo "path not found"
					echo "----------------------------"
					

				fi
				
						
				
				
			
			fi
			
		   
						
			
					
					
					#----------------------------------------------
				fi 
				#cd ./data-main
				#client_file_path2="$(<./${client_web}_path.txt)"
				#cd ../
				cd $client_file_path2
				
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web

			fi
									
			git_dir_path="$(<./git_dir_path.txt)"
			echo "TEST DIR::: $git_dir_path"
			
			if [ ! -d $git_dir_path ]; then
			echo "Repository Directory not exist-----"
			
			else
				echo "--------------------------"
				echo "STARTING GIT PUSH PROCESS"
				echo "git push -u origin master"
				echo "--------------------------"
									
				cd $git_dir_path
				
				git log	
				
				cd ../
				
				if [ -e "./screenshot_git.vbs" ]
				then
					echo "Starting screenshot process"
					cscript //nologo ./screenshot_git.vbs
				else 
					echo "***"
					cd ./../../../../../
					#./scrn_gitv3.sh
					#------------------------------------------------
					
					#!/bin/bash 
#chmod u+x run_all.sh 

			echo "----------------------------"
            echo "SCREENSHOT WINDOW"
			echo "----------------------------"
			
			if [ -e "./screenshot_path.txt" ]
			then 
				echo "----------------------------"
				echo "screenshot_path.txt is existing"
				echo "----------------------------"
				
				screenshot_path="$(<./screenshot_path.txt)"
												
				if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path2="$(<./${client_web}_path.txt)"
				cd ../
					echo $screenshot_path > ./$client_file_path2/scrn_wfile_path.txt
					
					echo "----------------------------"
					echo "Screenshot Windows"
					echo "----------------------------"
					
					read -p "Enter Window Title:" window_title  
					#echo "The client name: " $client_name

					while [[ "${window_title}" == "" ]] ; do
					   read -p "Enter Window Title:" window_title  
					done
					
					scrn_window="git-log"
					#read -p "Enter Screenshot filename: " scrn_window 
								
					#while [[ "${scrn_window}" == "" ]] ; do
					#   read -p "Enter Screenshot filename: " scrn_window 
					#done
					if [ -e "./textReplace.vbs" ]
					then
						
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						cd $client_file_path2
						scrn_windowA="$(<./scrn_git.txt)"
						cd ../../../../../
					
					else
						
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						cd $client_file_path2
						scrn_windowA="$(<./scrn_git.txt)"
						cd ../../../../../
						
					fi 
										
					if [ -e "./$client_file_path2/screenshot_git.vbs" ]
					then
						echo "$client_file_path2/screenshot_git.vbs is already existing"
						cd ./data-main
						client_file_path2="$(<./${client_web}_path.txt)"
						cd ../
											
						cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						
												
						if [ -e "./$client_file_path2/scrn_wfile_path.txt" ]
						then
							echo ""
							cd $client_file_path2
							scrn_path="$(<./scrn_wfile_path.txt)"
							cd ../../../../../
													
						else 
							echo ""
							
							cd $client_file_path2
							
							screenshot_path="$(<./screenshot_path.txt)"
							echo $screenshot_path > ./$client_file_path2/scrn_wfile_path.txt
							cd $client_file_path2
							scrn_path="$(<.scrn_wfile_path.txt)"
							cd ../../../../../
							
							
						fi 
					
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					else 
						echo "COPYING screenshot_window.vbs"
						
						echo "screenshot_window.vbs is already existing"
						cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						
						screenshot_path="$(<./screenshot_path.txt)"
							echo $screenshot_path > ./$client_file_path2/scrn_wfile_path.txt
							scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
							
							
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					fi 
			
				else 
				
					echo "----------------------------"
					echo "client_file_path.txt is not existing"
					echo "----------------------------"
				
				fi 
							
			else
				echo "----------------------------"
				echo "screenshot_path.txt is not existing"
				echo "----------------------------"
				
				if [ -e "./data-main/${client_web}_path.txt" ]
				then
					cd ./data-main
					client_file_path2="$(<./${client_web}_path.txt)"
					cd ../
					
					echo $client_file_path2 > srn_directory.txt 
					cscript //nologo ./textReplace.vbs "./" "" ./srn_directory.txt
					cscript //nologo ./textReplace.vbs "//" "\\" ./srn_directory.txt
					mydirectory="$(<./mydirectory.txt)"
					srn_directory="$(<./srn_directory.txt)"
					#echo "1"
					echo $mydirectory\\$srn_directory\screenshot > ./$client_file_path2/scrn_wfile_path.txt
					scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
					echo $scrn_path
										
					#cd $client_file_path
					
					echo $mydirectory\\$srn_directory\screenshot > ./$client_file_path2/scrn_wfile_path.txt
					
					if [ -e "./textReplace.vbs" ]
					then
						
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						
						scrn_windowA="$(<./$client_file_path2/scrn_window.txt)"
					
					else
						cd $client_file_path2
												
						echo $scrn_window".png" > ./$client_file_path2/scrn_git.txt
						cscript //nologo ./textReplace.vbs " " "-" ./$client_file_path2/scrn_git.txt
						
						scrn_windowA="$(<./$client_file_path2/scrn_git.txt)"
					
					fi 
										
					if [ -e "./$client_file_path2/screenshot_git.vbs" ]
					then
						echo "$client_file_path2/screenshot_git.vbs is already existing"
						#cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cd $client_file_path
						
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					else 
						echo "COPYING screenshot_window.vbs"
										
						echo "screenshot_window.vbs is already existing"
						cp ./screenshot_window.vbs ./$client_file_path2/screenshot_git.vbs
						cscript //nologo ./textReplace.vbs "window_title" "$window_title" ./$client_file_path2/screenshot_git.vbs
						scrn_path="$(<./$client_file_path2/scrn_wfile_path.txt)"
						cscript //nologo ./textReplace.vbs "scrn_wfile_path" "$scrn_path\\$scrn_windowA" ./$client_file_path2/screenshot_git.vbs
						
					fi 
					
					
					
				else 
					echo "----------------------------"
					echo "path not found"
					echo "----------------------------"
					

				fi
				
						
				
				
			
			fi
			
		   
						
			
					#------------------------------------------------
					
					
				fi 
			
				
				
			fi 
			
			
            ;;
			
		"CHANGE REPO")
            echo "you chose choice $REPLY $opt"
			#git_file_path
			
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
			
			read -p "Enter New Git file path:" git_file_pathb 
				
			while [[ "${git_file_pathb}" == "" ]] ; do
			   read -p "Enter New Git file path:" git_file_pathb 
			done
			
			echo "$git_file_pathb" > git_file_pathb.txt 
			
			if [ ! -d .git ]; then
				echo "Git Directory not exist"
				
			else
				echo "Git Directory already exist"
				cd ./.git 
				if [ -e "config" ]
				then
					#config="$(<./.git/config)"
					git_file_path="$(<./../git_file_path.txt)"
					git_file_pathb="$(<./../git_file_pathb.txt)"
					#url_text="url = $git_file_path #"
					
					start ./../../../../../Find_And_Replace.vbs "config" "$git_file_path" "$git_file_pathb"
					echo "$git_file_pathb" > ./../git_file_path.txt 
					
					git init
					git remote add origin $git_file_pathb
				
				else
					echo "git config not found"
					echo "Pleasa add new repository."
				fi
				
				cd .. 

			fi;
						
			
			
			#break
			
            ;;
		"DEL GIT")
            echo "you chose choice $REPLY $opt"
			
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
			
			if [ ! -d .git ]; then
				echo "git Directory not exist"
				
			else
				echo "git Directory already exist"
				echo "attrib -h .git" >> attrib.bat 
				echo "exit" >> attrib.bat 
				start ./attrib.bat 		
				
				if [ ! -d ./git_bu ]; then
					mkdir -p "./git_bu"
				else
					echo "folder git_bu already existing. "
								
				fi 
				
				cp -rf .git ./git_bu
				#rm ./git_bu/config delete config file or rename by using mv 
				mv ./git_bu/.git/config ./git_bu/.git/config.old 
				echo "folder git_bu backup created successfully. "
				rm -rf .git
				
				if [ -e "./git_file_path.txt" ]
				then
					
					rm ./git_file_path.txt
					echo "git path git_file_path.txt was deleted successfully"
				else 
					echo "git path delete failed"
				fi 	
				
				if [ ! -d .git ]; then
				echo "git Directory was deleted successfully"
			
				else
					echo "git Directory delete failed"
								
				fi;
					
			fi;
			
			#break
			
            ;;
			
			"SCRN GIT")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./scrn_gitv3.sh 
			#./scrn_windows.sh 
			
			
			#break
			
            ;;
					
					
        "QUIT") 
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
				cd ../../../../../

			fi
			
            break
            ;;
        *) echo "invalid option $REPLY press ENTER KEY to view menu"
				
		;;
    esac
done

			
			#--------------------------------------------
			
            ;;
			
		"DB CON2")
           echo "--------------------"
            echo "DATABASE CONNECTION "
			echo "--------------------"
			#-------------------------------------------------
			
			
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
			
			
			#-------------------------------------------------
			
            ;;
							
        "QUIT") 
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
				cd ./../../../../../

			fi
			
            break
            ;;
        *) echo "invalid option $REPLY press ENTER KEY to view menu"
				
		;;
    esac
done













			
			
			
			
			
			
						
		else 
			echo "-------------------------"
			echo "Cannot find the file $client_web"
			echo "-------------------------"
											
		fi