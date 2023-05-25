@echo off
REM To prevent reimport.
if %is_imported_basic%1==11 (exit /b)

set current_script_directory=%~dp0

set callr=call "%current_script_directory%call_bat_result.bat"
set call=call "%current_script_directory%call_bat.bat"
set ps_call=call "%current_script_directory%call_powershell.bat"
set ps_callr=call "%current_script_directory%call_powershell_result.bat"

set add_to_path=%ps_call% "%current_script_directory%add_to_path.ps1"
set remove_from_path=%ps_call% "%current_script_directory%remove_from_path.ps1"
set download_file=%ps_call% "%current_script_directory%download_file.ps1"

REM To prevent reimport.
set is_imported_basic=1
echo Basic scripts imported.