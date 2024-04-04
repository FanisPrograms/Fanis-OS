@echo off
:start
echo Type 1 to make a folder
echo Type 2 to see the main directory, folders, files, and programs
echo Type 3 to make a file.
echo Type 4 to navigate to a folder
echo Type 5 to delete a file or folder.
set /p choose=Enter number Here: 
if %choose%==1 goto folder
if %choose%==2 goto directory
if %choose%==3 goto file
if %choose%==4 goto cd
if %choose%==5 goto delete
goto start

:folder
set /p name=Enter folder name: 
mkdir %name%
goto start

:directory
dir
goto start

:file
set /p Filename=Enter file name :
set /p extension= Enter file extension here (.txt for text document) :
set /p content= Enter file content here :
echo %content% > %Filename%.%extension%
echo File is created.
goto start

:cd
set /p folderYouWantToCdIn=What folder to you want to go to? : 
cd %folderYouWantToCdIn%
goto start

:delete
set /p fileWannaDel=What file/folder do you want to delete?
del %fileWannaDel%