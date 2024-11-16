Set WshShell = WScript.CreateObject("WScript.Shell")
sStringGiven  = "zDYg([[]]90(0))**%$$$$,,,,,,,!````8/bY)b6Ox$z"
sStringToSend = ""
For ii = 1 To Len( sStringGiven)
  sChar = Mid( sStringGiven, ii, 1)
  Select Case sChar
  Case "{", "}", "(", ")", "[", "]", "^", "%", "+", "~"
    sStringToSend = sStringToSend & "{" & sChar & "}"
  Case Else
    sStringToSend = sStringToSend & sChar
  End Select
Next
WshShell.SendKeys sStringToSend