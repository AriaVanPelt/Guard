@echo off

setlocal
call "%~dp0config.cmd"

set "mypackage=%~n0"
set "mypackage=%mypackage:*-=%
set "mypackage=%mypackage:*-=%
set "mypackage=%mypackage:*-=%

pushd "%myroot%"
if not exist prj\node (
  mkdir prj\node
)
pushd prj\node
call create-react-app "%mypackage%"
popd
popd
endlocal

pause
