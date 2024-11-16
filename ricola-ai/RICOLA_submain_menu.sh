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
options=("DB CONNECT" "BU SQL" "UP SQL" "SCRN BU HOME" "SCRN UP HOME" "SCRN EMAIL" "SCRN VIEWFORM" "SCRN OFDP" "SCRN ICOGNITO" "SCRN OTHER" "SCRN CHROME" "SCRN EDGE" "GIT" "QUIT")
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
			
		"SCRN OTHER")
          		
			echo "------------------"
            echo "SCREENSHOT NEW"
			echo "------------------"
		   
		   read -p "Enter New screenshot name:" scrn_new  
			while [[ "${scrn_new}" == "" ]] ; do
			   read -p "Enter New screenshot name:" scrn_new 
			done  
			
			echo "$scrn_new" > ./scrn_newfile.txt 
			cscript //nologo "textReplace.vbs" " " "-" ./scrn_newfile.txt 
			
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
			
			
			 if [ -e "./data-main/${client_web}_path.txt" ]
			then
				cd ./data-main
				client_file_path2="$(<./${client_web}_path.txt)"
				cd ../
				cd $client_file_path2
				cp ../../../../../screenshot.vbs $scrn_newfileA 
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
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
			
			if [ -e "./sub_git_v7.sh" ]
				then
				echo "-------------------------"
				echo "Starting Git"
				echo "-------------------------"
					./sub_git_v7.sh				
									
				else
					echo "-------------------------"
					echo "Change directory to main"
					echo "-------------------------"
					cd ../../../../../
					./sub_git_v7.sh	
					
				fi 
			
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