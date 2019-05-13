Dim str
Set WshShell = CreateObject("WScript.Shell")
WshShell.RegWrite "HKEY_CLASSES_ROOT\.2", "Задание 2 выполено"
str=InputBox("Введите название")
' Включаем обработку ошибок времени выполнения
On Error Resume Next 
	m=WshShell.RegRead("HKCR\"& str &"\")
 	If Err.Number<>0 Then
		 Info="Ошибка при введении данных " & Drive & vbCrLf & _
   		    "Код ошибки: " &  err.number & vbCrLf &+ _
    		   "Описание: " & err.description
 		MsgBox Info, 0, "Ошибка"
	  Else
            ' Все в порядке
                              result = WshShell.RegRead("HKEY_CLASSES_ROOT\"&str)
	                    MsgBox m
             End if
