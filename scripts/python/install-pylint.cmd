@echo off

setlocal
call "%~dp0config.cmd"

set "mypackage=%~n0"
set "mypackage=%mypackage:*-=%

pip install -U "%mypackage%"
endlocal

pause
