#!/bin/bash 
#chmod u+x run_all.sh 

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