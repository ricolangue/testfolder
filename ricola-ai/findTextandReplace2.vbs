Const ForReading = 1
Const ForWriting = 2

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile("test-output.txt", ForReading)

strText = objFile.ReadAll
objFile.Close
strFind = "db_name="
intPos = inStr(1,strText,strFind,1)
If intPos>0 then
    strReplaceText = Mid(strText,intPos ,100)
    strNewText = Replace(strText, strReplaceText , "db_name2=")
End If
Set objFile = objFSO.OpenTextFile("test-output.txt", ForWriting)
objFile.WriteLine strNewText

objFile.Close