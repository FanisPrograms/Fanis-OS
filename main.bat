@echo off
:start
echo Welcome to FanisOS
echo FanisOS is a Operating System made by Fanis Programs
echo Booting into system using FanisOS booting application
echo Loading FanisOS booting application
echo code:/system:ReadyToRun.State
echo Loading..........
echo Type help to see commands
set /p command=Enter Command Here: 
if "%command%"=="help" (
    echo Type shutdown to shutdown, notepad to open notepad and explorer to open file explorer, then click Enter.
    pause
    cls
    goto start
) else if "%command%"=="notepad" (
    start "" "%~dp0notepad.bat"
    cls
    goto start
) else if "%command%"=="explorer" (
    start "" "%~dp0fileexplorer.bat"
    cls
    goto start
) else (
    echo Command doesn't exist
    pause
    cls
    goto start
)
