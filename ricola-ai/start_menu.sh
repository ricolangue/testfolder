#!/bin/bash
# Bash Menu Script Example
echo "---------------------------"
echo " SELECT TASK "
echo "---------------------------"
PS3='Select TASK: '
options=("RUN TOOLS" "EMAIL VERIFIER" "RUN TASK" "SEARCH USERS" "SCREENSHOT" "DB CONNECTION" "GIT" "SCRN WIN" "QUIT")
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
        "RUN TASK")
		echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./my_folderv8.sh 
			
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
					
        "QUIT")
            break
            ;;
        *) echo "invalid option $REPLY press ENTER KEY to view menu"
		echo "---------------------------"		
		;;
    esac
done

#sed -i -e "s/$var1/$var2/g" /google.com.txt


