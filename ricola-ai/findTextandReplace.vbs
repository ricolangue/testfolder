Dim fso, file, content, newContent, regex, matches  

' Create filesystem object  
Set fso = CreateObject("Scripting.FileSystemObject")  

' Specify the file to be processed  
Set file = fso.OpenTextFile("test-output1.txt", 1) ' 1 for reading  

' Read the entire file content  
content = file.ReadAll
'content = "dbname"
file.Close  

' Create regex object to find the text after the equal symbol  
Set regex = New RegExp  
regex.Pattern = "=(.*)"  
regex.Global = True  

' Replace with desired new value (e.g., "newValue")  
newContent = regex.Replace(content, "=testoutdbname")  

' Write back to the file  
Set file = fso.OpenTextFile("test-output.txt", 2) ' 2 for writing  
file.Write newContent  
file.Close  

' Clean up  
Set fso = Nothing  
Set regex = Nothing