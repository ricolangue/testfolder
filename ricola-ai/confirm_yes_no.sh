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
		cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
		break
	elif [ "${_y}" == "y" ]; then
		#echo "You type small letter $_y"
		echo ""
		cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
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
		#cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
		break
	elif [ "${_y}" == "y" ]; then
		#echo "You type small letter $_y"
		echo ""
		#cscript //nologo ./$folderA/$tempFolder/$folderB/$myfolderA/$client_web/db_link.vbs
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