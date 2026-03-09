@echo off
cd /d C:\laragon\www\siturin-collection

git add .

git diff --cached --quiet
if %errorlevel%==0 (
    echo No hay cambios para hacer commit.
    exit /b
)

git commit -m "Auto commit %date% %time%"
git push origin main