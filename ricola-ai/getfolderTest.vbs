Dim objFSO, objFolder, objFile, outputPath  

' Create a FileSystemObject  
Set objFSO = CreateObject("Scripting.FileSystemObject")  

' Set the output file path  
outputPath = "C:\Users\User\Downloads\template3\output.txt"  

' Create or open the output file for writing  
Set objFile = objFSO.CreateTextFile(outputPath, True)  

' Loop through each subfolder in C:\
For Each objFolder In objFSO.GetFolder("C:\Users\User\Downloads\template3").SubFolders  
    ' Write the folder path to the output file  
    objFile.WriteLine objFolder.Path  
Next  

' Close the file  
objFile.Close  

' Clean up  
Set objFile = Nothing  
Set objFSO = Nothing