#!/bin/bash 
chmod u+x ./login2.sh
#./webfolder.txt
cscript //nologo "./textReplace.vbs" "> ./webfolder.txt" "> ./webfolder2.txt" ./login2.sh
#client_file_path.txt
cscript //nologo "./textReplace.vbs" "> client_file_path.txt" "> client_file_path2.txt" ./login2.sh
#screenshot_path.txt
cscript //nologo "./textReplace.vbs" "> screenshot_path.txt" "> screenshot_path2.txt" ./login2.sh
#client_dir
cscript //nologo "./textReplace.vbs" "> ./client_dir.txt" "> ./client_dir2.txt" ./login2.sh
#config/db_link.txt
cscript //nologo "./textReplace.vbs" "config/db_link.txt" "config/db_link2.txt" ./login2.sh
#config/db_name.txt
cscript //nologo "./textReplace.vbs" "config/db_name.txt" "config/db_name2.txt" ./login2.sh
#config/searchDbserver.txt
cscript //nologo "./textReplace.vbs" "config/searchDbserver.txt" "config/searchDbserver2.txt" ./login2.sh
#config/db_username.txt
cscript //nologo "./textReplace.vbs" "config/db_username.txt" "config/db_username2.txt" ./login2.sh
#config/db_password.txt
cscript //nologo "./textReplace.vbs" "config/db_password.txt" "config/db_password2.txt" ./login2.sh
#config/ftp_hostname.txt
cscript //nologo "./textReplace.vbs" "config/ftp_hostname.txt" "webfolder2.txt" ./login2.sh
#config/ftp_username.txt
cscript //nologo "./textReplace.vbs" "config/ftp_username.txt" "config/ftp_username2.txt" ./login2.sh
#config/ftp_password.txt
cscript //nologo "./textReplace.vbs" "config/ftp_password.txt" "config/ftp_password2.txt" ./login2.sh
#$(<./screenshot_path.txt)
cscript //nologo "./textReplace.vbs" "<./screenshot_path.txt)" "<./screenshot_path2.txt)" ./login2.sh
#$(<./client_dir.txt)
cscript //nologo "./textReplace.vbs" "<./client_dir.txt)" "<./client_dir2.txt)" ./login2.sh
#./tempFolder.txt
cscript //nologo "./textReplace.vbs" "./tempFolder.txt" "./tempFolder2.txt" ./login2.sh
#./git_v7.sh 
cscript //nologo "./textReplace.vbs" "./git_v7.sh" "./git_v8.sh" ./login2.sh

#echo $client_dir > ./client_dir.txt