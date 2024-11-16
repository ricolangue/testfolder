Set FSO = CreateObject("Scripting.FileSystemObject")  
strDouble = Chr(34)  

Set txtNames = FSO.OpenTextFile("C:\Users\User\Downloads\template3\FolderNames.txt", 1)  

Do Until txtNames.AtEndOfStream  
    strFolderName = txtNames.ReadLine  
    ' Remove potential surrounding whitespace  
    strFolderName = Trim(strFolderName)  
    
    ' Check if the folder exists before trying to get it  
    If FSO.FolderExists(strFolderName) Then  
        Set objDirectory = FSO.GetFolder(strFolderName)  
        Set TheFiles = objDirectory.Files  

        ' You can then process the files as needed  
        ' Example: Loop through each file in the directory  
        For Each file In TheFiles  
            ' Do something with each file  
            WScript.Echo file.Name  
        Next  
    Else  
        WScript.Echo "Folder does not exist: " & strFolderName  
    End If  
Loop  

txtNames.Close