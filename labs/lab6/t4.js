var WshShell,oUrlLink,PathShortcut;

WshShell = WScript.CreateObject("WScript.Shell");

PathShortcut = WshShell.SpecialFolders("Desktop");


oUrlLink = WshShell.CreateShortcut(PathShortcut + "\\AnonymMethods.URL");
oUrlLink.TargetPath = "https://metanit.com/sharp/tutorial/3.15.php";
oUrlLink.Save();
WScript.Echo("Ярлык создан|");





