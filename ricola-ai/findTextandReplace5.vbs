Const ForReading = 1  
Const ForWriting = 2  

Set objFSO = CreateObject("Scripting.FileSystemObject")  
Set objFile = objFSO.OpenTextFile("test-output.txt", ForReading)  

strText = "hello"  
objFile.Close  

' Define the pattern to find  
Set objRegEx = CreateObject("VBScript.RegExp")  
objRegEx.Global = True   
objRegEx.IgnoreCase = False  
objRegEx.Pattern = "" ' Matches "USER.A" followed by exactly six digits  

' Perform the replacement  
strNewText = objRegEx.Replace(strText, "helloworld")  

' Open the file for writing and save changes  
Set objFile = objFSO.OpenTextFile("test-output.txt", ForWriting)  
objFile.WriteLine strNewText  
objFile.Close