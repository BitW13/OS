$a = Get-Process | Where-Object {$_.status -eq 'running'}
$b = Get-Process | Where-Object {$_.status -eq 'stopped'}

ConvertTo-Xml -InputObject $a | Export-Clixml -Path "D:\University\ОС\labs\lab8\t.xml"
