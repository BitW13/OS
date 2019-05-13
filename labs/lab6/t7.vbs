Dim WshNetwork, Drives, str1
Set WshNetwork = WScript.CreateObject("WScript.Network") 
Set Drives = WshNetwork.EnumNetworkDrives 
str1 = "Enum network drives: " & vbNewLine 
For i = 0 to Drives.Count - 1 Step 2 
str1 = str1 & "Drives " & Drives.Item(i) & " = " & Drives.Item(i+1) & vbNewLine
Next
WScript.Echo str1 & "Count drives: " & Drives.Count
