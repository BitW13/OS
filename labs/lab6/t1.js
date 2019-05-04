WshShell = WScript.CreateObject("WScript.Shell");
WshSysEnv = WshShell.Environment("SYSTEM");
WScript.Echo(WshSysEnv("OS"));
WScript.Echo(WshSysEnv("WINDIR"));
