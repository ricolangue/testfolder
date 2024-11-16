Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd", 9
WScript.Sleep 500
WshShell.sendkeys "%{F4}"
WScript.Sleep 1000
wshShell.AppActivate "FileZilla"
WScript.Sleep 1000
WshShell.sendkeys "%{F4}"
WScript.Sleep 1000
wshShell.Run("FileZilla")
WScript.Sleep 3000
'wshShell.AppActivate "FileZilla"
WScript.Sleep 1000
'WshShell.SendKeys "+{TAB}"
'Db username
WScript.Sleep 500
WshShell.SendKeys "{ESC}"
WScript.Sleep 500
'WshShell.SendKeys "ftp_hostname"
FTPhostname  = "ftp_hostname"
FTPhostnameToSend = ""
For ii = 1 To Len( FTPhostname)
  sChar = Mid( FTPhostname, ii, 1)
  Select Case sChar
  Case "{", "}", "(", ")", "[", "]", "^", "%", "+", "~"
    FTPhostnameToSend = FTPhostnameToSend & "{" & sChar & "}"
  Case Else
    FTPhostnameToSend = FTPhostnameToSend & sChar
  End Select
Next
WshShell.SendKeys FTPhostnameToSend
WScript.Sleep 500
WshShell.SendKeys "{TAB}"
WScript.Sleep 500
'WshShell.SendKeys "ftp_username"
FTPusername  = "ftp_username"
FTPusernameToSend = ""
For ii = 1 To Len( FTPusername)
  sChar = Mid( FTPusername, ii, 1)
  Select Case sChar
  Case "{", "}", "(", ")", "[", "]", "^", "%", "+", "~"
    FTPusernameToSend = FTPusernameToSend & "{" & sChar & "}"
  Case Else
    FTPusernameToSend = FTPusernameToSend & sChar
  End Select
Next
WshShell.SendKeys FTPusernameToSend
WScript.Sleep 500
WshShell.SendKeys "{TAB}"
WScript.Sleep 500
'Db username
'WshShell.SendKeys "ftp_password"
FTPpassword  = "ftp_password"
FTPpasswordToSend = ""
For ii = 1 To Len( FTPpassword)
  sChar = Mid( FTPpassword, ii, 1)
  Select Case sChar
  Case "{", "}", "(", ")", "[", "]", "^", "%", "+", "~"
    FTPpasswordToSend = FTPpasswordToSend & "{" & sChar & "}"
  Case Else
    FTPpasswordToSend = FTPpasswordToSend & sChar
  End Select
Next
WshShell.SendKeys FTPpasswordToSend
WScript.Sleep 500
WshShell.SendKeys "{TAB}"
WScript.Sleep 500
'Db username
WshShell.SendKeys "21"
'WshShell.SendKeys "{TAB}"
WScript.Sleep 1000
WshShell.SendKeys "{ENTER}"
WScript.Sleep 500
WshShell.SendKeys "{TAB}{TAB}{TAB}{TAB}"
WScript.Sleep 500
WshShell.SendKeys "client_dir"
WScript.Sleep 500
WshShell.SendKeys "{ENTER}"
WScript.Sleep 2000
'Msgbox "Audit completed - please close any left over windows."