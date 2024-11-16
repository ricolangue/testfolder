#!/bin/bash
# Bash Menu Script Example
clear
echo "---------------------------"
echo " SELECT TASK "
echo "---------------------------"
PS3='Select TASK: '
options=("RUN TOOLS" "EMAIL VERIFIER" "RUN TASK1" "RUN TASK2" "SEARCH USERS" "SCREENSHOT" "DB CONNECTION" "GIT" "SCRN WIN" "SUB-MENU" "SET NAME" "OPEN TEMPLATE" "OPEN FOLDER" "QUIT")
select opt in "${options[@]}"
do
    case $opt in
        "RUN TOOLS")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./mytools.sh 	
			#break
            ;;
        "EMAIL VERIFIER")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./verify_email.sh
			#break
			
            ;;
        "RUN TASK1")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./my_folderv8.sh 
			
			#break
			
            ;;
		"RUN TASK2")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./my_folderv9.sh 
			
			#break
			
            ;;
		"SEARCH USERS")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			start https://office.orchestra.tools/users/usersdirectory/user/2987
			
			#break
			
            ;;
		"SCREENSHOT")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./screenshot.sh 
			
			#break
			
            ;;
		
		"DB CONNECTION")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./db_connect.sh 
			
			#break
			
            ;;
			
		"GIT")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./git_v7.sh 
			
			#break
			
            ;;
			
			"SCRN WIN")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./scrn_windows.sh 
			
			#break
			
            ;;
		"SUB-MENU")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./submain_menu5.sh
			
			#break
			
            ;;
		"SET NAME")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			if [ -e "./yourname.txt" ]
		then
			echo "-------------------------"
			echo "Open yourname.txt"
			echo "-------------------------"
			start ./yourname.txt 
			
		else 
			echo "-------------------------"
			echo "Cannot find the file yourname.txt "
			echo "-------------------------"
			echo "-------------------------"
			echo "ENTER YOUR NAME FOR YOUR FOLDER"
			echo "-------------------------"
			read -p "Enter your name: " yourname 

			while [[ "${yourname}" == "" ]] ; do
			#read -p "Enter Y to proceed:" yourname 
			   if [ "${yourname}" == "Q" ]; then
					echo "-------------------------"
					echo "$yourname: Exit"
					echo "-------------------------"
					break
				elif [ "${yourname}" == "q" ]; then
					echo "-------------------------"
					echo "$yourname: Exit"
					echo "-------------------------"
					break
						
				else 
					echo "-------------------------"
					echo "Entered text: $yourname"	
					echo "Type q to escape"
					echo "-------------------------"
					echo $yourname > ./yourname.txt
					
					if [ -e "./yourname.txt" ]
					then
						echo "-------------------------"
						echo "The file is existing"
						echo "-------------------------"
						
						break 
						
					else 
						echo "-------------------------"
						echo "Cannot find the file $yourname"
						echo "-------------------------"
														
					fi
				
				#break 
				fi 
				echo "-------------------------"
				echo "Type q to escape"
				echo "-------------------------"
				read -p "Enter your name: " yourname 
				
			done 

			while [[ "${yourname}" != "Q" && "${yourname}" != "q" ]] ; do
				
				if [ "${yourname}" == "Q" ]; then
					echo "-------------------------"
					echo "$yourname: Exit"
					echo "-------------------------"
					break
				elif [ "${yourname}" == "q" ]; then
					echo "-------------------------"
					echo "$yourname: Exit"
					echo "-------------------------"
					break
						
				else 
					echo "-------------------------"
					echo "Entered text: $yourname"	
					echo "Type q to escape"
					echo "-------------------------"
					echo $yourname > ./yourname.txt
					
					if [ -e "./yourname.txt" ]
					then
						echo "-------------------------"
						echo "The file is existing"
						echo "-------------------------"
									
						echo "-------------------------"
						
						break 
						
					else 
						echo "-------------------------"
						echo "Cannot find the file $yourname"
						echo "-------------------------"
														
					fi
				
				#break
				
				fi
				echo "-------------------------"
				echo "Type q to escape"
				echo "-------------------------"
				read -p "Enter your name: " yourname 
				
			done
			
			
														
		fi
			
			#break
			
            ;;
		
		"OPEN TEMPLATE")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			if [ ! -d template ]; then
					echo "-------------------------"
					echo "Directory templateh is not existing"
					echo "-------------------------"
			else 
				echo "-------------------------"
				echo "Open Directory template"
				echo "-------------------------"
				start template
			fi 
			 
			
			#break
			
            ;;
			
		"OPEN FOLDER")
		echo "---------------------------"
			echo "START OPEN FOLDER"
			echo "---------------------------"
			
			client_file_path="$(<./client_file_path.txt)"
			client_web="$(<./webfolder.txt)"
				
			if [ -e "./client_file_path.txt" ]
			then
				
				cd $client_file_path
				cd ../
				if [ ! -d $client_web ]; then
					echo "$client_web not found"
				else	
					echo "---------------------"
					echo "Open $client_web"
					echo "---------------------"
					start $client_web
					cd $client_web
				fi 
				
				cd ../../../../../
				 
			else
				echo "-------------------------"
				echo "path not found"
				echo "-------------------------"
				#cd ./$folderB/$myfolderA/$client_web
				#cd ../../../../../
				#cd ./data-main
				#client_file_path="$(<./${client_web}_path.txt)"
				cd ../
				
				if [ ! -d $client_web ]; then
					echo "$client_web not found"
				else
					echo "---------------------"
					echo "Open $client_web"
					echo "---------------------"
					start $client_web
					cd $client_web
				fi 
				
				cd ../../../../../
				
			fi
			;;
					
        "QUIT")
            break
            ;;
        *) echo "invalid option $REPLY press ENTER KEY to view menu"
		echo "---------------------------"	
			clear 
		;;
    esac
done

#sed -i -e "s/$var1/$var2/g" /google.com.txt


