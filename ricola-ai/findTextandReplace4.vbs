Dim fso, file, lines, output, i  
Set fso = CreateObject("Scripting.FileSystemObject")  

' Specify the file name  
Set file = fso.OpenTextFile("test-output.txt", 1)  

' Read all lines  
lines = ""  
Do While Not file.AtEndOfStream  
    lines = lines & file.ReadLine & vbCrLf  
Loop  
file.Close  

' Split into an array of lines  
lines = Split(lines, vbCrLf)  

' Process each line  
For i = 0 To UBound(lines)  
    If InStr(lines(i), "db_name") = 0 Then ' Change this to your search term  
        ' Replace text after equal sign  
        If InStr(lines(i), "=") > 0 Then  
            lines(i) = Left(lines(i), InStr(lines(i), "=")) & "new text" ' Change "new text"  
        End If  
        output = output & lines(i) & vbCrLf  
    End If  
Next  

' Write back to the file  
Set file = fso.OpenTextFile("test-output.txt", 2) ' Open for writing  
file.Write output  
file.Close