Dim filePath, searchString, fso, file, line  
filePath = "C:\Users\User\Downloads\RICLANGUE-FILES-ai-for-checking\test24.com.txt" ' Path to your text file  
searchString = "db_name"   ' The string you want to search for  

Set fso = CreateObject("Scripting.FileSystemObject")  
Set file = fso.OpenTextFile(filePath, 1) ' Open the file for reading  

Dim foundString  
foundString = ""  

Do While Not file.AtEndOfStream  
    line = file.ReadLine  
    If InStr(line, searchString) > 0 Then  
        foundString = line ' Store the line containing the search string  
        Exit Do ' Exit after finding the first occurrence  
    End If  
Loop  

file.Close  

' Output the found string to a temporary file  
If foundString <> "" Then  
    Set tempFile = fso.CreateTextFile("C:\Users\User\Downloads\RICLANGUE-FILES-ai-for-checking\test-outut.txt", True)  
    tempFile.WriteLine foundString  
    tempFile.Close  
End If