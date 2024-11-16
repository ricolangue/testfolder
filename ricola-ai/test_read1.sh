#!/bin/bash 
#chmod u+x run_all.sh 

 read -p "Enter New name:" scrn_new  
			while [[ "${scrn_new}" == "" ]] ; do
			   #read -p "Enter New screenshot name:" scrn_new
				scrn_new="Hello world"
			done 
			
			echo $scrn_new