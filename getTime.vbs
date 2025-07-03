Dim objShell, fechaHora
Set objShell = CreateObject("WScript.Shell")

' Obtener solo el año actual
fechaHora = Year(Now)

' Devolver el valor a UiPath
WScript.Echo fechaHora
