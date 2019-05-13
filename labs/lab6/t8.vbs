Dim DiskName, InputSettings, WshNetwork
Set WshNetwork = CreateObject("WScript.Network") 

DiskName = InputBox("Input name network disk")
On Error Resume Next 
    WshNetwork.RemoveNetworkDrive DiskName
    If Err.Number<>0 Then
 	 Info="Error: " & Drive & vbCrLf & _
   	    "code: " &  err.number & vbCrLf &+ _
		"info: " & err.description 		
 		MsgBox Info, 0, "Error"
	 'On Error Goto 0 
   End If
