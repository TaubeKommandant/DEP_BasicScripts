@echo off
set current_script_directory=%~dp0

set callr=call call_bat_result.bat
set call=call call_bat.bat
set ps_call=call call_powershell.bat
set ps_callr=call call_powershell_result.bat

set add_to_pass=%ps_call% "%current_script_directory%add_to_path.ps1"
set remove_from_path=%ps_call% "%current_script_directory%remove_from_path.ps1"
