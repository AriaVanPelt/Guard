@echo off

setlocal
call "%~dp0config.cmd"

python "%~dpn0.py"
endlocal

pause
