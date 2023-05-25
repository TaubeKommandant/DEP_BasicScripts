@echo off
set ps_script_name=%1
set variable_name=%2
set arguments=%3 %4 %5 %6 %7 %8 %9
call PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%ps_script_name%'" %arguments%
set /p %variable_name%=<"%~dp0temp\ret_val_.txt"
del "%~dp0temp\ret_val_.txt"