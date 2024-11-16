Dim fso, file, filePath, tempFile, line

filePath = "test-output.txt"
Set fso = CreateObject("Scripting.FileSystemObject")
Set file = fso.OpenTextFile(filePath, 1)
Set tempFile = fso.CreateTextFile(filePath & ".tmp", True)

Do Until file.AtEndOfStream
    line = file.ReadLine()
    If InStr(line, "db_name") > 0 Then ' Check if the line contains "db_pass"
        ' Split the line into parts based on the "=" delimiter
        Dim parts
        parts = Split(line, "=")
        If UBound(parts) >= 1 Then
            ' Replace the old value with the new value
            parts(1) = Replace(parts(1), "db_name", "db_pass")
            line = parts(0) & "=" & parts(1)
        End If
    End If
    tempFile.WriteLine(line)
Loop

file.Close
tempFile.Close

fso.DeleteFile filePath
fso.MoveFile filePath & ".tmp", filePath