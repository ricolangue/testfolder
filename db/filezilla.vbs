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
WshShell.SendKeys "proweaversite5.com"
WScript.Sleep 500
WshShell.SendKeys "{TAB}"
WScript.Sleep 500
WshShell.SendKeys "w5277"
WScript.Sleep 500
WshShell.SendKeys "{TAB}"
WScript.Sleep 500
'Db username
WshShell.SendKeys "GjEjk8g3H837337r"
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
WshShell.SendKeys "C:\Users\User\Downloads\ricola-ai-to-check-v10282024614\Web-Accounts\PDQA-FORM\OCTOBER\10-30-2024\mindrestorative.com"
WScript.Sleep 500
WshShell.SendKeys "{ENTER}"
WScript.Sleep 2000
'Msgbox "Audit completed - please close any left over windows."