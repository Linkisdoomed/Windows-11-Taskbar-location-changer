@echo off
title Windows 11 Taskbar Location fix
color 0a
echo.
echo 1.Top
echo 2.Bottom
echo.

set /p a= 
IF %a%==1 (
taskkill /f /im explorer.exe & reg import Top.reg
)

IF %a%==2 (
taskkill /f /im explorer.exe & reg import Bottom.reg & goto end
)

:end
explorer.exe
exit /b
