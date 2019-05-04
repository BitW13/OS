var WshNetwork = WScript.CreateObject("WScript.Network");

strComputerName = WshNetwork.ComputerName;
strUserName = WshNetwork.UserName;
WScript.Echo("ComputerName: " + strComputerName);
WScript.Echo("UserName: "+ strUserName);


