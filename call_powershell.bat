@echo off
set ps_script_name=%1
set arguments=%2 %3 %4 %5 %6 %7 %8 %9
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& '%ps_script_name%'" %arguments%