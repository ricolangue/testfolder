Dim filePath, searchString, fso, file, line  
filePath = "file_path1" ' Path to your text file  
searchString = "search_string"   ' The string you want to search for  

Set fso = CreateObject("Scripting.FileSystemObject")  
Set file = fso.OpenTextFile(filePath, 1) ' Open the file for reading  

Dim foundString  
foundString = ""  

Do While Not file.AtEndOfStream  
    line = file.ReadLine  
    If InStr(line, searchString) > 0 Then  
		value = Trim(Split(line, "=")(1))  
        foundString = value ' Store the line containing the search string  
        Exit Do ' Exit after finding the first occurrence  
    End If  
	
Loop  

file.Close  

' Output the found string to a temporary file  
If foundString <> "" Then  
    Set tempFile = fso.CreateTextFile("file_path2", True)  
    tempFile.WriteLine foundString  
    tempFile.Close  
End If