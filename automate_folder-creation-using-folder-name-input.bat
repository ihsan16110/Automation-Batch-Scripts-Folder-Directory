@echo off
setlocal

:: Path to the text file containing the list of folders
set "folderList=D:\epsdata\folders.txt"

:: Check if the folder list file exists
if not exist "%folderList%" (
    echo The folder list file does not exist: %folderList%
    pause
    exit /b 1
)

:: Read each line from the folder list and create the "BakInvJun24" folder
for /f "usebackq delims=" %%D in ("%folderList%") do (
    if exist "%%D" (
        mkdir "%%D\BakInvJun24"
        echo Created folder BakInvJun24 in %%D
    ) else (
        echo Folder does not exist: %%D
    )
)

endlocal
pause
