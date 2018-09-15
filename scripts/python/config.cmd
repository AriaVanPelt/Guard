@echo off

pushd "%~dp0..\.."

set "myroot=%CD%"
set "PATH=%myroot%\ext\python;%myroot%\ext\python\Scripts"

popd
