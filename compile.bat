@echo off

title Cosas del Colegio

:run_command

set /p moduloName=Nombre de la Clase: 

haxe -cp clases -D analyzer-optimize -main %moduloName% --interp

echo.

goto run_command