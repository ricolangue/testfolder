BaseFolder = "C:\Users\User\Downloads\template3"  ' Root folder to look for/create subfolders in  
MaxSize = 5              ' The number of characters to allow in folder name  
PaddingCharacter = "0"   ' Padding folder names with zeros for proper sorting  
NumFolders = 10          ' Number of additional folders to create  

intStart = GetLastFolder(BaseFolder)  

If IsNull(intStart) Then  
    intStart = 1  
End If  

For i = intStart To intStart + NumFolders - 1  
    strFolderName = BaseFolder & "\" & RightPad(i, MaxSize, PaddingCharacter)  
    Wscript.Echo strFolderName  
    CreateFolders(strFolderName)  
Next  

Function GetLastFolder(strFolder)  
    Dim fso, objFolder, subFlds, fld, maxNum, lastNum  
    Set fso = CreateObject("Scripting.FileSystemObject")  
    Set objFolder = fso.GetFolder(strFolder)  
    Set subFlds = objFolder.SubFolders  
    maxNum = 0  

    For Each fld In subFlds  
        If IsNumeric(fld.Name) Then  
            lastNum = CInt(fld.Name)  
            If lastNum > maxNum Then  
                maxNum = lastNum  
            End If  
        End If  
    Next  

    If maxNum = 0 Then  
        GetLastFolder = Null  
    Else  
        GetLastFolder = maxNum  
    End If  
End Function  

Function CreateFolders(folderPath)  
    Dim oFSO  
    Set oFSO = CreateObject("Scripting.FileSystemObject")  

    If Not oFSO.FolderExists(folderPath) Then  
        oFSO.CreateFolder(folderPath)  
    End If  
    
    Dim subFolder  
    For Each subFolder In Array("Text", "TestData")  
        If Not oFSO.FolderExists(folderPath & "\" & subFolder) Then  
            oFSO.CreateFolder(folderPath & "\" & subFolder)  
        End If  
    Next  
End Function  

Function RightPad(strText, intLen, chrPad)  
    ' Example: RightPad("1000", 7, "0") = "0001000"  
    ' Example: RightPad("1000", 4, "0") = "1000"  
    RightPad = Right(String(intLen, chrPad) & strText, intLen)  
End Function