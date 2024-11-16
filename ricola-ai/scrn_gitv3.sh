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
			
		   
						
			