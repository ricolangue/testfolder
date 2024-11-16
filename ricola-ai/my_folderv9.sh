#!/bin/bash
# Bash Menu Script Example
echo "-------------------------"
PS3='Select form template: '
options=("PDQA Form" "RWC Form" "Form Conversion" "Regular Blog" "Custom Blog" "Regular Testimonial" "Custom Testimonial" "Form Activation" "Fillable Pdf" "Login" "Upload" "OTHER FORM" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "PDQA Form")
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			#tempFolder="$opt" | sed -E 's/ /-/'
			#echo "$tempFolder" > ./$tempFolder.txt 
			
			./pdqa2.sh 
					
			break
            ;;
        "RWC Form")
            #echo "you chose choice $REPLY which is $opt"
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			
			./rwc2.sh 
			break
			
            ;;
        "Form Conversion")
            #echo "you chose choice $REPLY which is $opt"
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			
			./form_conversion2.sh 
						
			break
			
            ;;
		"Regular Blog")
            echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./regular_blog2.sh 
			
			break
			
            ;;
		"Custom Blog")
            #echo "you chose choice $REPLY which is $opt"
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			./custom_blog2.sh 
			
			break
			
            ;;
		"Regular Testimonial")
            #echo "you chose choice $REPLY which is $opt"
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			
			./regular_testimonial2.sh 
			
			break
			
            ;;
		"Custom Testimonial")
            #echo "you chose choice $REPLY which is $opt"
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			
			./custom_testimonial2.sh 
			
			break
			
            ;;
			
			"Form Activation")
            #echo "you chose choice $REPLY which is $opt"
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			
			./form_activation2.sh 
			
			break
			
            ;;
			
			"Fillable Pdf")
            #echo "you chose choice $REPLY which is $opt"
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			
			./fillable_pdf2.sh 
			
			break
			
            ;;
			
		"Login")
            #echo "you chose choice $REPLY which is $opt"
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			
			./login2.sh 		
			
			break
			
            ;;
		"Upload")
            #echo "you chose choice $REPLY which is $opt"
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			
			./upload2.sh 
			
			break
			
            ;;
			
		"OTHER FORM")
            #echo "you chose choice $REPLY which is $opt"
			echo "-------------------------"
            echo "SELECTED TASK: $opt"
			echo "-------------------------"
			
			./other_form2.sh 
			
			break
			
            ;;
			
        "Quit")
            break
            ;;
        *) echo "invalid option $REPLY";;
    esac
done





