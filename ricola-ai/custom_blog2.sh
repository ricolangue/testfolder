#!/bin/bash 
#chmod u+x run_all.sh 

#date '+%B %d'
#date '+%B'
folderA="Web-Accounts"
if [ ! -d $folderA ]; then
	mkdir -p $folderA;
	echo "$folderA was created successfully"
	
else
	echo "Directory already exist"

fi;			

#tempFolder="$opt" | sed -E 's/ /-/'
#echo "$tempFolder" > ./$tempFolder.txt
tempFolder="CUSTOM-BLOG"
			
if [ ! -d $folderA/$tempFolder ]; then
	mkdir -p $folderA/$tempFolder;
	echo "$tempFolder was created successfully"
	
else
	echo "Directory already exist"

fi;

date '+%B' > month.txt

if [ -e "./month.txt" ]
then
	_month="$(<./month.txt)"
	folderB=$(echo $_month | tr 'a-z' 'A-Z')
else
	_month=""
	folderB=$(echo $_month | tr 'a-z' 'A-Z')
fi

if [ ! -d ./$folderA/$tempFolder/$folderB ]; then
	mkdir -p ./$folderA/$tempFolder/$folderB;
	echo "$folderB was created successfully"
	
else
	echo "Directory already exist"

fi;
	
myfolderA=$(date '+%m-%d-%Y')
if [ ! -d ./$folderA/$tempFolder/$folderB/$myfolderA ]; then
	mkdir -p ./$folderA/$tempFolder/$folderB/$myfolderA;
	echo "$myfolderA was created successfully"
	
else
	echo "Directory already exist"
fi;

read -p "Enter account name:" client_name  
#echo "The client name: " $client_name

while [[ "${client_name}" == "" ]] ; do
   read -p "Enter account name:" client_name  
   #echo "The client name: " $client_name
  #(( i += 1 ))
done

read -p "Enter task ID:" task_ID  
#echo "The client name: " $client_name

while [[ "${task_ID}" == "" ]] ; do
   read -p "Enter task ID:" task_ID   
done

read -p "Enter client website:" client_web  
#echo "The website link is: " $client_web

while [[ "${client_web}" == "" ]] ; do
   read -p "Enter client website:" client_web  
   #echo "The website link is: " $client_web
  #(( i += 1 ))
done

if [ ! -d "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web" ]; then

	mkdir -p "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web";
	mkdir -p "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/bu";
	mkdir -p "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot";
	mkdir -p "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/up";

fi 

task_link="https://office.orchestra.tools/tasks/viewtask/"$task_ID
client_webA="https://www."$client_web
echo "$client_web" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/webfolder.txt
echo "$client_web" > ./webfolder2.txt
echo "$client_webA" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/website_link.txt 
echo "start $client_webA" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/client_webA.sh
#start ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/client_webA.sh
echo "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/" > client_file_path2.txt 
#echo "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/" > ./data-main/"${client_web}_path.txt" 
echo "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/client_file_path.txt 
echo "$task_ID" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/task_ID.txt 

#screenshot Directory 
cscript //nologo ./mydirectory.vbs
mydirectory="$(<./mydirectory.txt)"
#mydirectory='D:\RICLANGUE-FILES\'
scrn_directory=$mydirectory'\'$folderA'\'$tempFolder'\'$folderB'\'$myfolderA'\'$client_web'\screenshot'
#client_dir=D://RICLANGUE-FILES/$folderA/$tempFolder/$folderB/$myfolderA/$client_web
client_dir=$mydirectory'\'$folderA'\'$tempFolder'\'$folderB'\'$myfolderA'\'$client_web

echo $scrn_directory > screenshot_path2.txt
echo '--------------------------------------------------' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo $scrn_directory >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo $client_dir > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/client_dir.txt
echo $client_dir > ./client_dir2.txt
echo '--------------------------------------------------' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo '    PDQA/RWC/FORMS SCREENSHOTS    ' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo '--------------------------------------------------' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo ':screenshot "'$scrn_directory'\bu home" --fullpage' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo ':screenshot "'$scrn_directory'\email" --fullpage' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo ':screenshot "'$scrn_directory'\viewform" --fullpage' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo ':screenshot "'$scrn_directory'\ofdp" --fullpage' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo ':screenshot "'$scrn_directory'\up home" --fullpage' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo '' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo '' >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_path.txt
echo ":screenshot '"$scrn_directory"\bu home' --fullpage" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_buhome_path.txt
echo ":screenshot '"$scrn_directory"\email' --fullpage" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_email_path.txt
echo ":screenshot '"$scrn_directory"\viewform' --fullpage" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_viewform_path.txt
echo ":screenshot '"$scrn_directory"\ofdp' --fullpage" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_ofdp_path.txt
echo ":screenshot '"$scrn_directory"\up home' --fullpage" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_uphome_path.txt

if [ -e "./screenshot.vbs" ]
then
	#scrn_txt="$(<./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/scrn.txt)"
	#cp ./template/pdqa_form.txt ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_buhome.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_uphome.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_email.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_viewform.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_ofdp.vbs
	
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_page_two_posts.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Blog_page_two_posts' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_page_two_posts.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_page_two_posts_admin.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Blog_page_two_posts_admin' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_page_two_posts_admin.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_page.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Blog_page' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_page.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_Page_Admin.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Blog_Page_Admin' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_Page_Admin.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_Post_Comment.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Blog_Post_Comment' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_Post_Comment.vbs
	
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_Post_Comment_Admin.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Blog_Post_Comment_Admin' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_Post_Comment_Admin.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Author_Page.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Author_Page' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Author_Page.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Category_Page.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Category_Page' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Category_Page.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Tag_Page.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Tag_Page' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Tag_Page.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_Mobile.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Blog_Mobile' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Blog_Mobile.vbs
	
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Post_Mobile.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Post_Mobile' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Post_Mobile.vbs
	cp ./screenshot.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Search.vbs
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\Search' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/Search.vbs
		
	#Replace char 
	#bu home 
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\bu home' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_buhome.vbs
	#up home 
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\up home' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_uphome.vbs
	#emal 
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\email' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_email.vbs
	#vieform
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\viewform' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_viewform.vbs
	#ofdp 
	cscript //nologo "textReplace.vbs" "_screenshot" ":screenshot '"$scrn_directory"\ofdp' --fullpage" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot_ofdp.vbs
	
	
else
	echo "File not found."
fi

config="config"
if [ ! -d $config ]; then
	mkdir -p $config;
	echo "$config folder was created successfully"
	
else
	echo "Directory already exist"

fi;		

echo "-------------------------"
echo "DB LINK"
echo "-------------------------"
read -p "Enter database link:" db_link  
#echo "The database link: " $db_link

while [[ "${db_link}" == "" ]] ; do
   read -p "Enter database link:" db_link  
   #echo "The database link: " $db_link

  #(( i += 1 ))
done

echo "$db_link" > ./config/db_link2.txt

echo "-------------------------"
echo "DB NAME"
echo "-------------------------"

read -p "Enter database name:" db_name  
#echo "The database link: " $db_link

while [[ "${db_name}" == "" ]] ; do
   read -p "Enter database name:" db_name 
   #echo "The database link: " $db_link

  #(( i += 1 ))
done

echo "$db_name" > ./config/db_name2.txt

echo "-------------------------"
echo "DB HOST/SERVER"
echo "press ENTER for localhost"
echo "-------------------------"

read -p "Enter database host:" db_server  
#echo "The database link: " $db_link

while [[ "${db_server}" == "" ]] ; do
   db_server="localhost"
done

echo "$db_server" > ./config/searchDbserver2.txt

echo "-------------------------"
echo "DB USERNAME"
echo "-------------------------"
read -p "Enter db username:" db_username 
#echo "The db username: " $db_username

while [[ "${db_username}" == "" ]] ; do
      
   read -p "Enter db username:" db_username 
   #echo "The db username: " $db_username
   
  #(( i += 1 ))
done

echo "$db_username" > ./config/db_username2.txt

echo "-------------------------"
echo "DB PASSWORD"
echo "-------------------------"
read -p "Enter db password:" db_password 
#echo "The db password: " $db_password

while [[ "${db_password}" == "" ]] ; do
   
   read -p "Enter db password:" db_password 
   #echo "The db password: " $db_password

  #(( i += 1 ))
done

echo "$db_password" > ./config/db_password2.txt

echo "-------------------------"
echo "FTP HOSTNAME"
echo "-------------------------"

read -p "Enter ftp hostname:" ftp_hostname 
#echo "The ftp hostname: " $ftp_hostname

while [[ "${ftp_hostname}" == "" ]] ; do
   
   read -p "Enter ftp hostname:" ftp_hostname 
   #echo "The ftp hostname: " $ftp_hostname

  #(( i += 1 ))
done

echo "$ftp_hostname" > ./webfolder2.txt

echo "-------------------------"
echo "FTP USERNAME"
echo "-------------------------"
read -p "Enter ftp username:" ftp_username 
#echo "The ftp username: " $ftp_username

while [[ "${ftp_username}" == "" ]] ; do
   
   read -p "Enter ftp username:" ftp_username 
   #echo "The ftp username: " $ftp_username

  #(( i += 1 ))
done

echo "$ftp_username" > ./config/ftp_username2.txt

echo "-------------------------"
echo "FTP PASSWORD"
echo "-------------------------"
read -p "Enter ftp password:" ftp_password 
#echo "The ftp password: " $ftp_password

while [[ "${ftp_password}" == "" ]] ; do
   
   read -p "Enter ftp password:" ftp_password 
   #echo "The ftp password: " $ftp_password

  #(( i += 1 ))
done

echo "$ftp_password" > ./config/ftp_password2.txt

if [ ! -d "data-main" ]; then

	mkdir -p "data-main";
	
fi 
echo "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/" > ./data-main/"${client_web}_path.txt" 
if [ -e "./data-main/$client_web" ]
then
	echo ""
	FILE="$client_web"  
	SEARCH_WEB="client_web="  
	NEW_VALUE="client_web=$client_web"  

	if grep -q "$SEARCH_WEB" "$FILE"; then  
		sed -i "s|$SEARCH_WEB.*|$NEW_VALUE|" "$FILE"  
	else  
		echo "$NEW_VALUE" >> "$FILE"  
	fi
	
	SEARCH_TASKID="task_ID="  
	NEW_TASKID="task_ID=$task_ID"  

	if grep -q "$SEARCH_TASKID" "$FILE"; then  
		sed -i "s|$SEARCH_TASKID.*|$NEW_TASKID|" "$FILE"  
	else  
		echo "$NEW_TASKID" >> "$FILE"  
	fi
	
	SEARCH_task_link="task_link="  
	NEW_task_link="task_link=$task_link"  

	if grep -q "$SEARCH_task_link" "$FILE"; then  
		sed -i "s|$SEARCH_task_link.*|$NEW_task_link|" "$FILE"  
	else  
		echo "$NEW_task_link" >> "$FILE"  
	fi
	
	scrn_directoryB="$(<./screenshot_path2.txt)"
	SEARCH_scrn_directory="scrn_directory="  
	NEW_scrn_directory="scrn_directory=screenshot_path"  

	if grep -q "$SEARCH_scrn_directory" "$FILE"; then  
		sed -i "s|scrn_directory=.*|$NEW_scrn_directory|" "$FILE"  
		cscript //nologo "./textReplace.vbs" "screenshot_path" "$scrn_directoryB" "$FILE"
	else  
		echo "$NEW_scrn_directory" >> "$FILE"  
		cscript //nologo "./textReplace.vbs" "screenshot_path" "$scrn_directoryB" "$FILE"
	fi
	
	client_dirB="$(<./client_dir2.txt)"
	SEARCH_client_dir="client_dir="  
	NEW_client_dir="client_dir=client_dirB"  

	if grep -q "$SEARCH_client_dir" "$FILE"; then  
		sed -i "s|$SEARCH_client_dir.*|$NEW_client_dir|" "$FILE"  
		cscript //nologo "./textReplace.vbs" "client_dirB" "$client_dirB" "$FILE"
	else  
		echo "$NEW_client_dir" >> "$FILE"  
		cscript //nologo "./textReplace.vbs" "client_dirB" "$client_dirB" "$FILE"
	fi
	
	SEARCH_db_link="db_link="  
	NEW_db_link="db_link=$db_link"  

	if grep -q "$SEARCH_db_link" "$FILE"; then  
		sed -i "s|$SEARCH_db_link.*|$NEW_db_link|" "$FILE"  
	else  
		echo "$NEW_db_link" >> "$FILE"  
	fi
	
	SEARCH_db_name="db_name="  
	NEW_db_name="db_name=$db_name"  

	if grep -q "$SEARCH_db_name" "$FILE"; then  
		sed -i "s|$SEARCH_db_name.*|$NEW_db_name|" "$FILE"  
	else  
		echo "$NEW_db_name" >> "$FILE"  
	fi
	
	SEARCH_db_server="db_server="  
	NEW_db_server="db_server=$db_server"  

	if grep -q "$SEARCH_db_server" "$FILE"; then  
		sed -i "s|$SEARCH_db_server.*|$NEW_db_server|" "$FILE"  
	else  
		echo "$NEW_db_server" >> "$FILE"  
	fi
	
	SEARCH_db_username="db_username="  
	NEW_db_username="db_username=$db_username"  

	if grep -q "$SEARCH_db_username" "$FILE"; then  
		sed -i "s|$SEARCH_db_username.*|$NEW_db_username|" "$FILE"  
	else  
		echo "$NEW_db_username" >> "$FILE"  
	fi
	
	SEARCH_db_password="db_password="  
	NEW_db_password="db_password=$db_password"  

	if grep -q "$SEARCH_db_password" "$FILE"; then  
		sed -i "s|$SEARCH_db_password.*|$NEW_db_password|" "$FILE"  
	else  
		echo "$NEW_db_password" >> "$FILE"  
	fi
	
	SEARCH_ftp_hostname="ftp_hostname="  
	NEW_ftp_hostname="ftp_hostname=$ftp_hostname"  

	if grep -q "$SEARCH_ftp_hostname" "$FILE"; then  
		sed -i "s|$SEARCH_ftp_hostname.*|$NEW_ftp_hostname|" "$FILE"  
	else  
		echo "$NEW_ftp_hostname" >> "$FILE"  
	fi
	
	SEARCH_ftp_username="ftp_username="  
	NEW_ftp_username="ftp_username=$ftp_username"  

	if grep -q "$SEARCH_ftp_username" "$FILE"; then  
		sed -i "s|$SEARCH_ftp_username.*|$NEW_ftp_username|" "$FILE"  
	else  
		echo "$NEW_ftp_username" >> "$FILE"  
	fi
	
	SEARCH_ftp_password="ftp_password="  
	NEW_ftp_password="ftp_password=$ftp_password"  

	if grep -q "$SEARCH_ftp_password" "$FILE"; then  
		sed -i "s|$SEARCH_ftp_password.*|$NEW_ftp_password|" "$FILE"  
	else  
		echo "$NEW_ftp_password" >> "$FILE"  
	fi
	
	
else
	echo "File is not found"
	grep -E "client_web=$client_web" ./data-main/$client_web || echo "client_web=$client_web" >> ./data-main/$client_web
	grep -E "task_ID=$task_ID" ./data-main/$client_web || echo "task_ID=$task_ID" >> ./data-main/$client_web
	grep -E "task_link=$task_link" ./data-main/$client_web || echo "task_link=$task_link" >> ./data-main/$client_web
	grep -E "scrn_directory=$scrn_directory" ./data-main/$client_web || echo "scrn_directory=$scrn_directory" >> ./data-main/$client_web
	grep -E "client_dir=$client_dir" ./data-main/$client_web || echo "client_dir=$client_dir" >> ./data-main/$client_web
	#database 
	grep -E "db_link=$db_link" ./data-main/$client_web || echo "db_link=$db_link" >> ./data-main/$client_web
	grep -E "db_name=$db_name" ./data-main/$client_web || echo "db_name=$db_name" >> ./data-main/$client_web
	grep -E "db_server=$db_server" ./data-main/$client_web || echo "db_server=$db_server" >> ./data-main/$client_web
	grep -E "db_username=$db_username" ./data-main/$client_web || echo "db_username=$db_username" >> ./data-main/$client_web
	grep -E "db_password=$db_password" ./data-main/$client_web || echo "db_password=$db_password" >> ./data-main/$client_web
	#ftp 
	grep -E "ftp_hostname=$ftp_hostname" ./data-main/$client_web || echo "ftp_hostname=$ftp_hostname" >> ./data-main/$client_web
	grep -E "ftp_username=$ftp_username" ./data-main/$client_web || echo "ftp_username=$ftp_username" >> ./data-main/$client_web
	grep -E "ftp_password=$ftp_password" ./data-main/$client_web || echo "ftp_password=$ftp_password" >> ./data-main/$client_web
	
fi 

client_webB="https://www."$client_web"/?s=[form"
s3_amazon_link="https://console.aws.amazon.com/s3/buckets/proweaver-files"

echo "Client Name: $client_name" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "task_link=$task_link" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "website=$client_webA" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "#==== START DATABASE =====" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "db_link=$db_link" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "db_name=$db_name" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "db_username=$db_username" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "db_password=$db_password" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "#==== END DATABASE =====" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "                     " >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "#==== START FTP =====" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "ftp_hostname=$ftp_hostname" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "ftp_username=$ftp_username" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "ftp_password=$ftp_password" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "#==== END FTP =====" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
#run command 
echo "start $client_webB" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/client_webB.sh
echo "start $db_link" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.sh
echo $db_name".sql" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_name.txt

#start browser 
start notepad.exe ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
if [ -e "./db_link.vbs" ]
then
	echo "File existing"
	cp ./db_link.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
	cscript //nologo "textReplace.vbs" "db_link" "$db_link" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
	cscript //nologo "textReplace.vbs" "db_username" "$db_username" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
	cscript //nologo "textReplace.vbs" "db_password" "$db_password" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
	
	#mouse_click
	if [ -e "./m_xy.txt" ]
	then
		echo "mouse click xy: $m_xy.txt"
		m_xy="$(<./m_xy.txt)"
		cscript //nologo "textReplace.vbs" "m_xy" "$m_xy" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
		
	else 
		echo "mouse click xy not defined"
	fi
			
	cp ./db_link2.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link2.vbs
	cscript //nologo "textReplace.vbs" "m_xy" "$m_xy" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link2.vbs
	cscript //nologo "textReplace.vbs" "db_link" "$db_link" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link2.vbs
	cscript //nologo "textReplace.vbs" "db_username" "$db_username" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link2.vbs
	cscript //nologo "textReplace.vbs" "db_password" "$db_password" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link2.vbs
	
	#mouse_click
	if [ -e "./db_xy.txt" ]
	then
		echo "mouse click xy: $db_xy.txt"
		db_xy="$(<./db_xy.txt)"
		cscript //nologo "textReplace.vbs" "db_xy" "$db_xy" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link2.vbs
		
	else 
		echo "mouse click xy not defined"
	fi
	#mouse_click
	if [ -e "./exp_xy.txt" ]
	then
		echo "mouse click xy: $m_xy.txt"
		exp_xy="$(<./exp_xy.txt)"
		cscript //nologo "textReplace.vbs" "exp_xy" "$exp_xy" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link2.vbs
	else 
		echo "mouse click xy not defined"
	fi
	#mouse_click
	if [ -e "./c_xy.txt" ]
	then
		echo "mouse click xy: $c_xy.txt"
		c_xy="$(<./c_xy.txt)"
		cscript //nologo "textReplace.vbs" "c_xy" "$c_xy" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link2.vbs
	else 
		echo "mouse click xy not defined"
	fi
			
	if [ -e "./nircmd.exe" ]
	then
		echo "File existing"
		cp ./nircmd.exe ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/nircmd.exe
		cp ./nircmdc.exe ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/nircmdc.exe
		#cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
	
	else 
		echo "File not found"
	fi
	
else 
	echo "File not found"
fi
#start confirm.sh to continue 
echo "-------------------"
echo "Press Y to connect DB"
echo "Press N to skip DB"
echo "-------------------"
read -p "Enter Y/N to proceed:" _y 

while [[ "${_y}" == "" ]] ; do
#read -p "Enter Y/N to proceed:" _y 
   if [ "${_y}" == "Y" ]; then
		#echo "You type uppercase letter $_y"
		echo ""
		break
	elif [ "${_y}" == "y" ]; then
		#echo "You type small letter $_y"
		echo ""
		break
			
	else 
	echo "You typed key: $_y"
	
	#break 
	fi 
	
	if [ "${_y}" == "N" ]; then
		#echo "You type uppercase letter $_y"
		echo ""
		break
	elif [ "${_y}" == "n" ]; then
		#echo "You type small letter $_y"
		echo ""
		break
			
	else 
	echo "You typed key: $_y"
	
	#break 
	fi 
	
	echo "-------------------"
	echo "Press Y to connect DB"
	echo "Press N to skip DB"
	echo "-------------------"
	read -p "Enter Y/N to proceed:" _y 
	
done 

while [[ "${_y}" != "Y" && "${_y}" != "y" ]] ; do
	#read -p "Enter Y/N to proceed:" _y 
	if [ "${_y}" == "Y" ]; then
		#echo "You type uppercase letter $_y"
		echo ""
		break
	elif [ "${_y}" == "y" ]; then
		#echo "You type small letter $_y"
		echo ""
		break
			
	else 
	echo "You typed key: $_y"
	
	#break
	
	fi
	
	if [ "${_y}" == "N" ]; then
		#echo "You type uppercase letter $_y"
		echo ""
		break
	elif [ "${_y}" == "n" ]; then
		#echo "You type small letter $_y"
		echo ""
		break
			
	else 
	echo "You typed key: $_y"
	
	#break
	
	fi
	
	echo "-------------------"
	echo "Press Y to connect DB"
	echo "Press N to skip DB"
	echo "-------------------"
	read -p "Enter Y/N to proceed:" _y 
	
done

if [ "${_y}" == "Y" ]; then
	#echo "You type uppercase letter $_y"
	echo "STARTING DB CONNECTION"
	cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
	
elif [ "${_y}" == "y" ]; then
	#echo "You type small letter $_y"
	echo "STARTING DB CONNECTION"
	cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
else 
	echo "SKIP DB CONNECTION"
#break
fi

#start confirm.sh to continue 
if [ -e "./confirm.sh" ]
then
	echo "STARTING CONFIRM YES"
	#./confirm.sh 
else 
	echo "FILE NOT FOUND"
fi 

if [ -e "./filezilla.vbs" ]
then
	echo "File existing"
	cp ./filezilla.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/filezilla.vbs
	cscript //nologo "textReplace.vbs" "ftp_hostname" "$ftp_hostname" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/filezilla.vbs
	cscript //nologo "textReplace.vbs" "ftp_username" "$ftp_username" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/filezilla.vbs
	cscript //nologo "textReplace.vbs" "ftp_password" "$ftp_password" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/filezilla.vbs
	cscript //nologo "textReplace.vbs" "client_dir" "$client_dir" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/filezilla.vbs
	#cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/filezilla.vbs
	
else 
	echo "File not found"
fi

if [ -e "./adminer.vbs" ]
then
	echo "File adminer.vbs is existing"
	adminer_link=$client_web/adminer.php 
	
	cp ./adminer.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/adminer.vbs
	cscript //nologo "textReplace.vbs" "adminer_link" "$adminer_link" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/adminer.vbs
	cscript //nologo "textReplace.vbs" "db_username" "$db_username" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/adminer.vbs
	cscript //nologo "textReplace.vbs" "db_password" "$db_password" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/adminer.vbs
	cscript //nologo "textReplace.vbs" "db_name" "$db_name" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/adminer.vbs
cscript //nologo "textReplace.vbs" "localhost" "$db_server" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/adminer.vbs
	
	adminer_link2=$client_web/phpminiadmin.php 
	
	cp ./adminer.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/phpminiadmin.vbs
	cscript //nologo "textReplace.vbs" "adminer_link" "$adminer_link2" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/phpminiadmin.vbs
	cscript //nologo "textReplace.vbs" "db_username" "$db_username" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/phpminiadmin.vbs
	cscript //nologo "textReplace.vbs" "db_password" "$db_password" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/phpminiadmin.vbs
	cscript //nologo "textReplace.vbs" "db_name" "$db_name" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/phpminiadmin.vbs
	cscript //nologo "textReplace.vbs" "localhost" "$db_server" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/phpminiadmin.vbs
	
else 
	echo "File not found"
fi


echo "-------------------"
echo "Press Y to connect FTP"
echo "Press N to skip FTP"
echo "-------------------"
read -p "Enter Y/N to proceed:" _y 

while [[ "${_y}" == "" ]] ; do
#read -p "Enter Y/N to proceed:" _y 
   if [ "${_y}" == "Y" ]; then
		#echo "You type uppercase letter $_y"
		echo ""
		break
	elif [ "${_y}" == "y" ]; then
		#echo "You type small letter $_y"
		echo ""
		break
			
	else 
	echo "You typed key: $_y"
	
	#break 
	fi 
	
	if [ "${_y}" == "N" ]; then
		#echo "You type uppercase letter $_y"
		echo ""
		break
	elif [ "${_y}" == "n" ]; then
		#echo "You type small letter $_y"
		echo ""
		break
			
	else 
	echo "You typed key: $_y"
	
	#break 
	fi 
	
	echo "-------------------"
	echo "Press Y to connect FTP"
	echo "Press N to skip FTP"
	echo "-------------------"
	read -p "Enter Y/N to proceed:" _y 
	
done 

while [[ "${_y}" != "Y" && "${_y}" != "y" ]] ; do
	#read -p "Enter Y/N to proceed:" _y 
	if [ "${_y}" == "Y" ]; then
		#echo "You type uppercase letter $_y"
		echo ""
		break
	elif [ "${_y}" == "y" ]; then
		#echo "You type small letter $_y"
		echo ""
		break
			
	else 
	echo "You typed key: $_y"
	
	#break
	
	fi
	
	if [ "${_y}" == "N" ]; then
		#echo "You type uppercase letter $_y"
		echo ""
		break
	elif [ "${_y}" == "n" ]; then
		#echo "You type small letter $_y"
		echo ""
		break
			
	else 
	echo "You typed key: $_y"
	
	#break
	
	fi
	
	echo "-------------------"
	echo "Press Y to connect FTP"
	echo "Press N to skip FTP"
	echo "-------------------"
	read -p "Enter Y/N to proceed:" _y 
	
done

if [ "${_y}" == "Y" ]; then
	#echo "You type uppercase letter $_y"
	echo "STARTING FTP CONNECTION"
	cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/filezilla.vbs
	
elif [ "${_y}" == "y" ]; then
	#echo "You type small letter $_y"
	echo "STARTING FTP CONNECTION"
	cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/filezilla.vbs
else 
	echo "SKIP FTP CONNECTION"
#break
fi


#s3://proweaver-files/TECH/Ideal Home Health Services Inc./version2/October-1-2024-RicoLa/screenshot/

echo "                     " >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "#==== SCREENSHOT FILE PATH =====" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"
echo "scrn_path=$scrn_path_final" >> ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$client_web".txt"

custom_blog_guide="blog_guide.txt"
if [ -e "./template/$custom_blog_guide" ]
then
	cp ./template/$custom_blog_guide ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$custom_blog_guide
	start notepad.exe ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$custom_blog_guide
	
else
	echo "File not found."
fi

echo "$tempFolder" | tr 'A-Z' 'a-z' > ./tempFolder2.txt
cscript //nologo "textReplace.vbs" "-" "_" ./tempFolder2.txt
open_form="$(<./tempFolder2.txt)"
file_name="${open_form}.html"
#cp ./template/pdqa_form.txt ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/pdqa_form.txt
if [ -e "./template/$file_name" ]
then
	#scrn_txt="$(<./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/scrn.txt)"
	#cp ./template/pdqa_form.txt ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
	cp ./template/$file_name ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
	cscript //nologo "textReplace.vbs" "account_name" "$client_name" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
	
else
	echo "File not found."
fi

#account_name
#sed -i -e "s/account_name/${client_name}/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#to_email 
echo "--------------------------"
echo "TO EMAIL"
echo "--------------------------"
read -p "Enter To email:" to_email 
while [[ "${to_email}" == "" ]] ; do
   read -p "Enter To email:" to_email   
done
#sed -i -e "s/to_email/${to_email}/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
cscript //nologo "textReplace.vbs" "to_email" "$to_email" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#cc_email
echo "--------------------------"
echo "CC EMAIL"
echo "--------------------------"
read -p "Enter CC email:" cc_email 
while [[ "${cc_email}" == "" ]] ; do
   read -p "Enter CC email:" cc_email 
done
#sed -i -e "s/cc_email/${cc_email}/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
cscript //nologo "textReplace.vbs" "cc_email" "$cc_email" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#cc_email
echo "--------------------------"
echo "TO QUEUE"
echo "--------------------------"
read -p "Enter queue email:" to_queue 
while [[ "${to_queue}" == "" ]] ; do
   read -p "Enter CC email:" to_queue 
done
#sed -i -e "s/cc_email/${cc_email}/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
cscript //nologo "textReplace.vbs" "to_queue" "$to_queue" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name


#techx_email
echo "--------------------------"
echo "TECHX EMAIL"
echo "--------------------------"
read -p "Enter Techx email:" techx_email 
while [[ "${techx_email}" == "" ]] ; do
   read -p "Enter Techx email:" techx_email 
done
#sed -i -e "s/techx_email/${techx_email}/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
cscript //nologo "textReplace.vbs" "techx_email" "$techx_email" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#wp_email
echo "--------------------------"
echo "WP EMAIL"
echo "--------------------------"
read -p "Enter wp email:" wp_email 
while [[ "${wp_email}" == "" ]] ; do
   read -p "Enter wp email email:" wp_email 
done
#sed -i -e "s/config_email/${config_email}/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
cscript //nologo "textReplace.vbs" "wp_email" "$wp_email" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#blog_link
echo "--------------------------"
echo "HOME BLOG LOCATION "
echo "--------------------------"
read -p "Enter blog home location (ex: bottom):" blog_location 
while [[ "${blog_location}" == "" ]] ; do
   read -p "Enter blog home location (ex: bottom):" blog_location 
done
cscript //nologo "textReplace.vbs" "blog_location" "$blog_location" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#blog_link
echo "--------------------------"
echo "BLOG LINK"
echo "--------------------------"
read -p "Enter Blog link:" blog_link 
while [[ "${blog_link}" == "" ]] ; do
   read -p "Enter Blog link:" blog_link 
done
cscript //nologo "textReplace.vbs" "blog_link" "$blog_link" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
#website_link 
cscript //nologo "textReplace.vbs" "website_link" "$client_webA" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#_nickname 
echo "--------------------------"
echo "NICENAME"
echo "--------------------------"
read -p "Enter nickname:" _nickname 
while [[ "${_nickname}" == "" ]] ; do
   read -p "Enter nickname:" _nickname   
done
cscript //nologo "textReplace.vbs" "_nickname" "$_nickname" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#login_link
echo "--------------------------"
echo "WP LOGIN LINK"
echo "--------------------------"
read -p "Enter Wp login link:" login_link 
while [[ "${login_link}" == "" ]] ; do
   read -p "Enter Wp login link:" login_link 
done
#sed -i -e "s/login_link/\"${login_link}\"/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
#start Find_And_Replace.vbs "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name" "login_link" "$login_link"
cscript //nologo "textReplace.vbs" "login_link" "$login_link" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#_username
echo "--------------------------"
echo "WP USERNAME"
echo "--------------------------"
read -p "Enter username:" _username 
while [[ "${_username}" == "" ]] ; do
   read -p "Enter username:" _username 
done
#sed -i -e "s/_username/${_username}/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
cscript //nologo "textReplace.vbs" "_username" "$_username" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#_password
echo "--------------------------"
echo "WP PASSWORD"
echo "--------------------------"
read -p "Enter password:" _password  
while [[ "${_password}" == "" ]] ; do
   read -p "Enter password:" _password 
done
#sed -i -e "s/_password/${_password}/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
#start Find_And_Replace.vbs "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name" "_password" "$_password"
cscript //nologo "textReplace.vbs" "_password" "$_password" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#git_file_path
echo "--------------------------"
echo "GIT FILE PATH LINK"
echo "--------------------------"
read -p "Enter Git file path:" git_file_path 
while [[ "${git_file_path}" == "" ]] ; do
   read -p "Enter Git file path:" git_file_path 
done
#sed -i -e "s/git_file_path/\"${git_file_path}\"/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
#start Find_And_Replace.vbs "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name" "git_file_path" "$git_file_path"
cscript //nologo "textReplace.vbs" "git_file_path" "$git_file_path" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

echo "$git_file_path" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/git_file_path.txt 

if [ -e "./data-main/$client_web" ]
then
	echo ""
		
	SEARCH_git_file_path="git_file_path="  
	NEW_git_file_path="git_file_path=$git_file_path"  

	if grep -q "$SEARCH_git_file_path" "$FILE"; then  
		sed -i "s|$SEARCH_git_file_path.*|$NEW_git_file_path|" "$FILE"  
	else  
		echo "$NEW_git_file_path" >> "$FILE"  
	fi
	
	
else
	echo "File is not found"
	grep -E "git_file_path=$git_file_path" ./data-main/$client_web || echo "git_file_path=$git_file_path" >> ./data-main/$client_web
	
fi 

#sed -i -e "s/scrn_file_path/\"$scrn_path_final\"/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#website_link
if [ -e "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/website_link.txt" ]
then
    website_link="$(<./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/website_link.txt)"
	#sed -i -e "s/website_link/\"$website_link\"/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
	#start Find_And_Replace.vbs "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name" "website_link" "$website_link"
	cscript //nologo "textReplace.vbs" "website_link" "$website_link" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
else
    #website_link=""
	#start Find_And_Replace.vbs "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name" "website_link" "$website_link"
	cscript //nologo "textReplace.vbs" "website_link" "$website_link" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
fi
#sed -i -e "s/website_link/\"$client_webA\"/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name

#echo "The Screenshot File Path: " $scrn_path
#sed -i -e "s/$var1/$var2/g" /google.com.txt
echo "-------------------"
	echo "You can proceed by pressing Y key if you're done,"
	echo "the screesnshot and backup"
	echo "-------------------"
read -p "Enter Y to proceed:" _y 

while [[ "${_y}" == "" ]] ; do
#read -p "Enter Y to proceed:" _y 
   if [ "${_y}" == "Y" ]; then
		#echo "You type uppercase letter $_y"
		echo ""
		break
	elif [ "${_y}" == "y" ]; then
		#echo "You type small letter $_y"
		echo ""
		break
			
	else 
	echo "You typed key: $_y"
	
	#break 
	fi 
	echo "-------------------"
	echo "You can proceed by pressing Y key if you're done,"
	echo "the screesnshot and backup"
	echo "-------------------"
	read -p "Enter Y to proceed:" _y 
	
done 

while [[ "${_y}" != "Y" && "${_y}" != "y" ]] ; do
	#read -p "Enter Y to proceed:" _y 
	if [ "${_y}" == "Y" ]; then
		#echo "You type uppercase letter $_y"
		echo ""
		break
	elif [ "${_y}" == "y" ]; then
		#echo "You type small letter $_y"
		echo ""
		break
			
	else 
	echo "You typed key: $_y"
	
	#break
	
	fi
	echo "-------------------"
	echo "You can proceed by pressing Y key if you're done,"
	echo "the screesnshot and backup"
	echo "-------------------"
	read -p "Enter Y to proceed:" _y 
	
done

# Directory to be zipped
#bu='./$folderB/$myfolderA/$client_web/bu'
bu='bu'

#Check the file or folder exists or not
if [[ -d "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/bu"  ||  -e "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/bu" ]]; then
    #Read filename without extension and
    #add .tar extension to create the compressed file
	cd ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/
    filename="${bu%.*}.tar.zip"
    #Create the compressed file by using the `tar` command
    tar --create --file="$filename" "$bu"
    #Print the success message
    echo "The compressed file is created successfully."
	
	cd ../../../../../
	
else
    #Print the error message
    echo "File or Folder name does not exist: $bu"
fi

#up='./$folderB/$myfolderA/$client_web/up'
up='up'

#Check the file or folder exists or not
if [[ -d "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/up"  ||  -e "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/up" ]]; then
    #Read filename without extension and
    #add .tar extension to create the compressed file
	cd ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web
    filename="${up%.*}.tar.zip"
    #Create the compressed file by using the `tar` command
    tar --create --file="$filename" "$up"
    #Print the success message
    echo "The compressed file is created successfully."
	cd ../../../../../
else
    #Print the error message
    echo "File or Folder name does not exist: $up"
fi

#run git =====================================
./git_v8.sh 
#run git =====================================

folder_B="$(<./month.txt)"
myfolderC=$(date '+%d-%Y')
#echo $myfolderC
if [ -e "./yourname.txt" ]
then
	echo ""
else 
	echo "--------------------------"
	echo "ENTER YOUR NAME"
	echo "for your folder name"
	echo "--------------------------"
	read -p "Enter your name:" yourname 
	while [[ "${yourname}" == "" ]] ; do
	   read -p "Enter your name:" yourname
	done
	#sed -i -e "s/_username/${_username}/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
	echo $yourname > ./yourname.txt
	cscript //nologo "textReplace.vbs" " " "-" ./yourname.txt
fi 
yourname="$(<./yourname.txt)"
s3_folder=$folder_B-$myfolderC-$yourname

if [ ! -d "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$s3_folder" ]; then
    #echo "Folder not exist";
	mkdir -p "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$s3_folder";
	
	else 
	echo "Folder name $s3_folder already exist";
	
fi

if [ ! -d "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot" ]; then
	echo "Screenshot folder not exist"
	else 
	#cp -rf ./template ./programs
	cp -rf ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/screenshot ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$s3_folder
fi 

if [ -e "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/bu.tar.zip" ]
then
    #mv ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/bu.tar.zip ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$s3_folder/bu.tar.zip 
	echo "-----------------"
else
    echo "File name bu.tar.zip not exist";
fi
#
if [ -e "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/up.tar.zip" ]
then
    #mv ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/up.tar.zip ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$s3_folder/up.tar.zip 
	echo "-----------------"
else
    echo "File name up.tar.zip not exist";
fi
#open folder 
start https://ap-southeast-1.console.aws.amazon.com/s3/buckets/proweaver-files?region=ap-southeast-1&bucketType=general&prefix=TECH/
echo "---------------------"
echo "SCREENSHOT BACKUP"
echo "---------------------"
read -p "Enter Screenshot File Path:" scrn_path 
#echo "The Screenshot File Path: " $scrn_path

while [[ "${scrn_path}" == "" ]] ; do
   
   read -p "Enter Screenshot File Path:" scrn_path 
   #echo "The Screenshot File Path: " $scrn_path

  #(( i += 1 ))
done

#echo "$scrn_path" | sed -r 's/^.{5}//' > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/scrn.txt

if [ -e "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/scrn.txt" ]
then
    scrn_txt="$(<./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/scrn.txt)"
else
    scrn_txt=""
fi


#scrn_path_pre="$scrn_path" | sed -r 's/^.{5}//'
#scrn_path_final="https://s3.console.aws.amazon.com/s3/buckets/"$scrn_txt
#echo "The Screenshot File Path: " $scrn_txt
echo "The Screenshot File Path: " $scrn_path
echo "$scrn_path" > ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/scrn_out.txt

if [ -e "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/scrn_out.txt" ]
then
    scrn_out="$(<./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/scrn_out.txt)"
	#sed -i -e "s/scrn_file_path/\"$scrn_out\"/g" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
	#start Find_And_Replace.vbs "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name" "scrn_file_path" "$scrn_out"
	cscript //nologo "textReplace.vbs" "scrn_file_path" "$scrn_out" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
else
    #scrn_out=""
	#start Find_And_Replace.vbs "./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name" "scrn_file_path" "$scrn_path_final"
	cscript //nologo "textReplace.vbs" "scrn_file_path" "$scrn_path_final" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/$file_name
fi

if [ -e "./open_form.vbs" ]
then
	echo "File existing"
	#copy open_form to client_dir
	form_html=$client_dir\\"${open_form}.html" 
	cp ./open_form.vbs ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/"${open_form}.vbs"
	cscript //nologo "textReplace.vbs" "form_html" "$form_html" ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/"${open_form}.vbs"
	cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/"${open_form}.vbs"
	
else 
	echo "File not found"
fi