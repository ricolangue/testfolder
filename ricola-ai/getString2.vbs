Dim filePath, searchVariable, fso, file, line, value  

filePath = "C:\Users\User\Downloads\RICLANGUE-FILES-ai-for-checking\test24.com.txt"    ' Specify the path to the text file  
searchVariable = "db_name"             ' The variable you want to search for  

Set fso = CreateObject("Scripting.FileSystemObject")  
Set file = fso.OpenTextFile(filePath, 1) ' Open the file for reading  

Do While Not file.AtEndOfStream  
    line = file.ReadLine  
    ' Check if the line starts with the search variable followed by '='  
    If InStr(line, searchVariable & "=") > 0 Then  
        ' Split the line by '=' to get the value  
        value = Trim(Split(line, "=")(1))  
        WScript.Echo "Value for " & searchVariable & ": " & value  
        Exit Do ' Exit after finding the first occurrence  
    End If  
Loop  

file.Close