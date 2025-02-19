@echo off

title Cosas del Colegio

:run_command

set /p moduloName=Nombre de la Clase: 

haxe -cp clases -D analyzer-optimize --run %moduloName%

echo.

goto run_command