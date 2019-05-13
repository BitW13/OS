Dim WshNetwork, Printers, str
str="Enum Printer Connections: " + Chr(10) 
Set WshNetwork = WScript.CreateObject("WScript.Network") 
Set Printers = WshNetwork.EnumPrinterConnections
For i = 0 to Printers.Count - 1 Step 2 
	str = str + Chr(10)  + Printers.Item(i) + "=" + Printers.Item(i+1)
Next 
MsgBox str
If Printers.Count>1 Then
	Dim InputName
	InputName = InputBox("Enter the name of the default printer you want to use")
	WshNetwork.SetDefaultPrinter InputName 
End if
