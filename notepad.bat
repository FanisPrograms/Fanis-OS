@echo off
:start
echo -FanisOS notepad-
set /p opinion=Do you want to open or make a text document? (type 1 for open and 2 for make)
if %opinion%==2 (
    goto make
) else if %opinion%==1 (
    goto open
) else (
    echo Please type 1 or 2.
    pause
    goto start
)
:make
set /p text=Enter text: 
set /p name=Enter file name: 
echo Creating text file...
echo %text% > %name%.txt
echo Text file created.
goto start
:open
set /p openfilename=What is the name of the file you want to open?
type %openfilename%.txt
goto start

