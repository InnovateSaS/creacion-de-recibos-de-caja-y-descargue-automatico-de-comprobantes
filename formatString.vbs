Function ConvertirFormato(priceValue)
    Dim tempValue

    ' Convertir a cadena
    priceValue = CStr(priceValue)

    ' Mostrar valor original
    WScript.Echo "Original: " & priceValue

    ' Eliminar el signo de dólar y espacios
    priceValue = Replace(priceValue, "$", "")
    priceValue = Trim(priceValue)
    WScript.Echo "Después de quitar $: " & priceValue

    ' Reemplazar los puntos por #
    tempValue = Replace(priceValue, ".", "#")
    WScript.Echo "Después de reemplazar . por #: " & tempValue

    ' Reemplazar las comas por puntos
    tempValue = Replace(tempValue, ",", ".")
    WScript.Echo "Después de reemplazar , por .: " & tempValue

    ' Reemplazar los # por comas
    tempValue = Replace(tempValue, "#", ",")
    WScript.Echo "Después de reemplazar # por ,: " & tempValue

    ' Retornar el valor convertido
    ConvertirFormato = tempValue
End Function

' Capturar el argumento pasado desde UiPath y llamar a la función
Dim inputValue
inputValue = CStr(WScript.Arguments(0)) ' Convertir el argumento a cadena
WScript.Echo ConvertirFormato(inputValue)
