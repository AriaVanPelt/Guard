@echo off

setlocal EnableDelayedExpansion
call "%~dp0config.cmd"

set "mypackage=%~n0"
set "mypackage=%mypackage:*-=%
set "mypackage=%mypackage:*-=%
set "mypackage=%mypackage:*-=%

set "mycommand=%~n0"
set "mycommand=!mycommand:-%mypackage%=!"
set "mycommand=%mycommand:-= %"

pushd "%myroot%\prj\node\%mypackage%"
call %mycommand%
popd
endlocal

pause
