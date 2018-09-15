@echo off

setlocal
call "%~dp0config.cmd"

set "mypackage=%~n0"
set "mypackage=%mypackage:*-=%

call npm install -g "%mypackage%"
endlocal

pause
