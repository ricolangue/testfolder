Const ForReading = 1
Const ForWriting = 2

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objFile = objFSO.OpenTextFile("test-output.txt", ForReading)

strText = objFile.ReadAll
objFile.Close
strFind = "dbname="
intPos = inStr(1,strText,strFind,1)
If intPos>0 then
    strReplaceText = Mid(strText,intPos ,12)
    'strNewText = Replace(strText, strReplaceText , "USER.A170510")

Set objRegEx = CreateObject("VBScript.RegExp")

objRegEx.Global = True   
objRegEx.IgnoreCase = False
'"=(.*)"
objRegEx.Pattern = "=(.*)" 

strNewText =  objRegEx.Replace(strText, "=dbfordb4234324sfsdf")

End If
Set objFile = objFSO.OpenTextFile("test-output.txt", ForWriting)
objFile.WriteLine strNewText

objFile.Close





