@echo off

title Subir a GitHub

echo Subiendo los cambios a git...

git add .

set /p commitMessage=Ingrese el Nombre de la Actualizacion: 

echo Running git commit with the provided name...

git commit -m "%commitMessage%"

echo Subiendo a GitHub...

git push origin main

echo Terminado!

pause
