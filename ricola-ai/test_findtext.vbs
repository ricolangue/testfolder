Dim filePath, searchString, fso, file, line  

filePath = "C:\Users\User\Downloads\RICLANGUE-FILES-ai-for-checking\test24.com.txt" ' Specify the path to the text file  
searchString = "db_password"    ' Assign the string you are looking for  

Set fso = CreateObject("Scripting.FileSystemObject")  
Set file = fso.OpenTextFile(filePath, 1) ' Open the file for reading  

Do While Not file.AtEndOfStream  
    line = file.ReadLine  
    If InStr(line, searchString) > 0 Then  
        WScript.Echo "Found: " & line ' Outputs the line containing the search string  
    End If  
Loop  

file.Close