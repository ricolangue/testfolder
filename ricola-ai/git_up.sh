#!/bin/bash

			if [ -e "./client_file_path.txt" ]
			then
				echo "----------------------------"
				echo "Change directory to $client_file_path"
				echo "----------------------------"
				client_file_path="$(<./client_file_path.txt)"
				cd $client_file_path
			else 
				echo "----------------------------"
				echo "path not found"
				echo "----------------------------"
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
			
			includesA=./up/includes
			bannerA=./up/banner.php 
			headA=./up/head.php 
			bottomA=./up/bottom.php
			footerA=./up/footer.php 
			middleA=./up/middle.php 
			functionA=./up/functions.php 
			loopageA=./up/loop-page.php 
			pluginsA=./up/plugins.js
			pluginsminA=./up/plugins.min.js
			styleA=./up/style.css
			styleminA=./up/style.min.css
			commentTemplateA=./up/comment-template.php
			
			includesB=$git_dir_path/wp-content/themes/$git_dir_path/includes
			bannerB=$git_dir_path/wp-content/themes/$git_dir_path/includes/banner.php 
			headB=$git_dir_path/wp-content/themes/$git_dir_path/includes/head.php 
			bottomB=$git_dir_path/wp-content/themes/$git_dir_path/includes/bottom.php
			footerB=$git_dir_path/wp-content/themes/$git_dir_path/includes/footer.php 
			middleB=$git_dir_path/wp-content/themes/$git_dir_path/includes/middle.php 
			functionB=$git_dir_path/wp-content/themes/$git_dir_path/functions.php 
			loopageB=$git_dir_path/wp-content/themes/$git_dir_path/loop-page.php 
			pluginsB=$git_dir_path/wp-content/themes/$git_dir_path/js/plugins.js
			pluginsminB=$git_dir_path/wp-content/themes/$git_dir_path/js/plugins.min.js
			styleB=$git_dir_path/wp-content/themes/$git_dir_path/style.css
			styleminB=$git_dir_path/wp-content/themes/$git_dir_path/style.min.css
			commentTemplateA=$git_dir_path/wp-includes/comment-template.php
			
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
			
			if [ ! -d $includesA ]; then

					echo "$includesA is not existing"
				else
					echo "$includesA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path/includes ]; then
								echo "-------------------------"
									echo "Directory forms is not existing"
									echo "-------------------------"
									#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
								else
									echo "-------------------------"
									echo "Directory forms is existing"
									echo "-------------------------"
									
									cp -rf $includesA/* $includesB 
									#cp -rf /path/to/data/* /path/to/backbu/
									echo "Copy file successfuly to Directory $includesB folder"
								
								fi
				fi 

				if [ -e "$bannerA" ]
				then
					echo "$bannerA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path/includes ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $bannerA $bannerB 
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
					
				else
					echo "$bannerA is not existing"
				fi 

				if [ -e "$headA" ]
				then
					echo "$headA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path/includes ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $headA $headB 
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
				else
					echo "$headA is not existing"
				fi 

				if [ -e "$bottomA" ]
				then
					echo "$bottomA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path/includes ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $bottomA $bottomB 
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
				else
					echo "$bottomA is not existing"
				fi 

				if [ -e "$footerA" ]
				then
					echo "$footerA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path/includes ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $footerA $footerB 
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
				else
					echo "$footerA is not existing"
				fi 

				if [ -e "$middleA" ]
				then
					echo "$middleA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path/includes ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $middleA $middleB 
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
				else
					echo "$middleA is not existing"
				fi 

				if [ -e "$functionA" ]
				then
					echo "$functionA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $functionA $functionB
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
				else
					echo "$functionA is not existing"
				fi 

				if [ -e "$loopageA" ]
				then
					echo "$loopageA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $loopageA $loopageB 
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
					
				else
					echo "$loopageA is not existing"
				fi 

				if [ -e "$pluginsA" ]
				then
					echo "$pluginsA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path/js ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $pluginsA $pluginsB 
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
				else
					echo "$pluginsA is not existing"
				fi 

				if [ -e "$pluginsminA" ]
				then
					echo "$pluginsminA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path/js ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $pluginsminA $pluginsminB 
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
					
				else
					echo "$pluginsminA is not existing"
				fi 

				if [ -e "$styleA" ]
				then
					echo "$styleA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $styleA $styleB 
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
					
				else
					echo "$styleA is not existing"
				fi 

				if [ -e "$styleminA" ]
				then
					echo "$styleminA is existing"
					if [ ! -d $git_dir_path/wp-content/themes/$git_dir_path ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $styleminA $styleminB
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
					
				else
					echo "$styleminA is not existing"
				fi 

				if [ -e "$commentTemplateA" ]
				then
					echo "$commentTemplateA is existing"
					if [ ! -d $git_dir_path/wp-includes ]; then
					echo "-------------------------"
						echo "Directory forms is not existing"
						echo "-------------------------"
						#mkdir -p ./$git_dir_path/wp-content/themes/$git_dir_path/forms
					else
						echo "-------------------------"
						echo "Directory forms is existing"
						echo "-------------------------"
						
						cp -rf $commentTemplateA $commentTemplateB
						#cp -rf /path/to/data/* /path/to/backbu/
						echo "Copy file successfuly to Directory $includesB folder"
					
					fi
				else
					echo "$commentTemplateA is not existing"
				fi 


			
			
			 