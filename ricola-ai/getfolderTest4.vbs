' Define the base folder path where the subfolders will be created  
BaseFolder = "C:\Users\User\Downloads\template3"  

' Define the array of subfolder paths you want to create  
SubFolders = Array("Web-Accounts", "Web-Accounts\PDQA-FORM\NOVEMBER\11-11-2024\angaullc.com")  

' Create the subfolders  
CreateSubFolders BaseFolder, SubFolders  

' Function to create the specified subfolders in a given base folder  
Sub CreateSubFolders(basePath, folders)  
    Dim oFSO, folder  
    Set oFSO = CreateObject("Scripting.FileSystemObject")  
    
    ' Loop through the array of subfolder names  
    For Each folder In folders  
        Dim newFolderPath  
        newFolderPath = basePath & "\" & folder  
        
        ' Split the path to ensure all nested folders are created  
        Dim pathParts  
        pathParts = Split(newFolderPath, "\")  
        
        ' Iterate through the parts to create any missing folders  
        Dim currentPath  
        currentPath = ""  
        
        For Each part In pathParts  
            currentPath = currentPath & part & "\"  
            If Not oFSO.FolderExists(Left(currentPath, Len(currentPath) - 1)) Then  
                oFSO.CreateFolder(Left(currentPath, Len(currentPath) - 1))  
                Wscript.Echo "Created: " & Left(currentPath, Len(currentPath) - 1)  
            End If  
        Next  
    Next  
End Sub