@echo off
rem echo Started callr.bat
set script_name=%1
set variable_name=%2
set arguments=%3 %4 %5 %6 %7 %8 %9
call "%script_name%" %arguments%
set %variable_name%=%hidden_ret_val%