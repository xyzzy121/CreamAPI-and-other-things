@echo off
setlocal enabledelayedexpansion

REM Get the current user's profile directory
for /f "tokens=*" %%i in ('whoami') do set "CurrentUser=%%i"
set "CurrentUser=!CurrentUser:*\Users\=!"

REM Specify the folder path to delete
set "FolderPath=C:\Users\!CurrentUser!\AppData\Local\Temp\caxa"

REM Check if the folder exists before attempting to delete it
if exist "!FolderPath!" (
    echo Deleting folder: "!FolderPath!"
    rmdir /s /q "!FolderPath!"
    if errorlevel 1 (
        echo Failed to delete folder.
    ) else (
        echo Folder deleted successfully.
    )
) else (
    echo Folder does not exist: "!FolderPath!"
)

endlocal
