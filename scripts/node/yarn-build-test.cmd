@echo off

setlocal
call "%~dp0config.cmd"

set "mypackage=%~n0"
set "mypackage=%mypackage:*-=%
set "mypackage=%mypackage:*-=%

pushd "%myroot%\prj\node\%mypackage%"
call yarn build
popd
endlocal

pause
