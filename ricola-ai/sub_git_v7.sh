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
	client_file_path2="$(<./${client_web}_path.txt)"
	cd ../
	cd $client_file_path2
	
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

#-----------------------------------------------
	
	
else
	echo "-------------------------"
	echo "path not found"
	echo "-------------------------"
	#cd ./$folderB/$myfolderA/$client_web

fi

