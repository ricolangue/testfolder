Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd", 9
WScript.Sleep 500
WshShell.sendkeys "%{F4}"
wshShell.Run("Firefox db_link")
WScript.Sleep 5000
wshShell.AppActivate "Firefox"
WScript.Sleep 1000
'WshShell.SendKeys "+{TAB}"

' Move the mouse to a specific location (X = 500, Y = 300)  
Set objMouse = CreateObject("WScript.Shell")  
'WshShell.Run "cmd.exe /c nircmd setcursor 1344 19", 0, True  
'WshShell.Run "cmd.exe /c nircmd setcursor 726 332", 0, True  
WshShell.Run "cmd.exe /c nircmd setcursor m_xy", 0, True  

' Wait for a moment  
WScript.Sleep 1000 ' Wait for 1 second  

' Simulate left mouse click  
WshShell.Run "cmd.exe /c nircmd sendmouse left click", 0, True 

WScript.Sleep 500
WshShell.SendKeys "^(a)"
WScript.Sleep 500
WshShell.SendKeys "^{BACKSPACE}"
WScript.Sleep 500
'Db username
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
'WshShell.SendKeys "db_username"
WScript.Sleep 500
WshShell.SendKeys "{TAB}"
WScript.Sleep 1000
'DB password
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
'WshShell.SendKeys "db_password"
WScript.Sleep 2000
WshShell.SendKeys "{ENTER}"
WScript.Sleep 2000
'Msgbox "Audit completed - please close any left over windows."