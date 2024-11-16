Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd", 9
WScript.Sleep 500
WshShell.sendkeys "%{F4}"
wshShell.Run("Firefox phpminiadmin_link")
WScript.Sleep 5000
wshShell.AppActivate "Firefox"
WScript.Sleep 2000
WshShell.SendKeys "+{TAB}"
WScript.Sleep 500
WshShell.SendKeys "^(a)"
WScript.Sleep 500
WshShell.SendKeys "^{BACKSPACE}"
WScript.Sleep 500
WScript.Sleep 1000
WshShell.SendKeys "localhost"
WScript.Sleep 500
WshShell.SendKeys "{TAB}"
WScript.Sleep 1000
WshShell.SendKeys "^(a)"
WScript.Sleep 500
WshShell.SendKeys "^{BACKSPACE}"
WScript.Sleep 500
'Db username
'WshShell.SendKeys "db_username"
DBusername  = "db_username"
DBusernameToSend = ""
For ii = 1 To Len( DBusername)
  sChar = Mid( DBusername, ii, 1)
  Select Case sChar
  Case "{", "}", "(", ")", "[", "]", "^", "%", "+", "~"
    DBusernameToSend = DBusernameToSend & "{" & sChar & "}"
  Case Else
    DBusernameToSend = DBusernameToSend & sChar
  End Select
Next
WshShell.SendKeys DBusernameToSend
WScript.Sleep 500
WshShell.SendKeys "{TAB}"
WScript.Sleep 1000
'DB password
'WshShell.SendKeys "db_password"
DBpassword  = "db_password"
DBpasswordToSend = ""
For ii = 1 To Len( DBpassword)
  sChar = Mid( DBpassword, ii, 1)
  Select Case sChar
  Case "{", "}", "(", ")", "[", "]", "^", "%", "+", "~"
    DBpasswordToSend = DBpasswordToSend & "{" & sChar & "}"
  Case Else
    DBpasswordToSend = DBpasswordToSend & sChar
  End Select
Next
WshShell.SendKeys DBpasswordToSend
WScript.Sleep 1000
WshShell.SendKeys "{TAB}"
WScript.Sleep 1000
'DB name
'WshShell.SendKeys "db_name"
DBname  = "db_name"
DBnameToSend = ""
For ii = 1 To Len( DBname)
  sChar = Mid( DBname, ii, 1)
  Select Case sChar
  Case "{", "}", "(", ")", "[", "]", "^", "%", "+", "~"
    DBnameToSend = DBnameToSend & "{" & sChar & "}"
  Case Else
    DBnameToSend = DBnameToSend & sChar
  End Select
Next
WshShell.SendKeys DBnameToSend
WScript.Sleep 2000
WshShell.SendKeys "{ENTER}"
WScript.Sleep 500
'Msgbox "Audit completed - please close any left over windows."