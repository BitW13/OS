var WshShell, MyShortcut, PathTarg, PathIcon, Res, PathShortcut;
var vbYesNo = 4, vbQuestion = 32, vbYes = 6;

WshShell = WScript.CreateObject("WScript.Shell");
PathShortcut = WshShell.SpecialFolders("Desktop");

MyShortcut = WshShell.CreateShortcut(PathShortcut+"\\MyShortcut.lnk");
PathTarg = WshShell.ExpandEnvironmentStrings("%windir%\\notepad.exe");
MyShortcut.TargetPath = PathTarg;

PathIcon=  WshShell.ExpandEnvironmentStrings("%windir%\\system32\\SHELL32.dll");
MyShortcut.IconLocation = PathIcon+", 1";
MyShortcut.WindowStyle=3;
MyShortcut.Description = "Ярлык блокнота";
MyShortcut.Save();
WScript.Echo("Ярлык создан");
 
