Set WshShell = WScript.CreateObject("WScript.Shell")
WshShell.Run "cmd", 9
WScript.Sleep 500
WshShell.sendkeys "%{F4}"
wshShell.Run("Firefox form_html")
WScript.Sleep 2000
wshShell.AppActivate "Firefox"
WScript.Sleep 2000
'Msgbox "Audit completed - please close any left over windows."