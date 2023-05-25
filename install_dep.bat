@echo off

REM Install if not exists
set all_dep_directory=C:\Users\%UserName%\AppData\Local\__remote_dependencies
set dep_name=%1
set dep_url=%2
set dep_url=%dep_url:"=%
set dep_dir=%all_dep_directory%\%dep_name%
set dep_check_file=%dep_dir%\dep_ulr.txt


if not exist "%all_dep_directory%" mkdir "%all_dep_directory%"
if not exist "%dep_dir%" mkdir "%dep_dir%"

REM Exit if dependency is installed.
set /p dep_url_from_file= < %dep_check_file%
if "%dep_url_from_file%"=="%dep_url%" (echo "Was installed before." & exit /b)

git clone "%dep_url%" "%dep_dir%"
echo %dep_url%> %dep_check_file%

REM Remove current folder if error.
if not exist "%dep_dir%/.git" (echo "Error. Repo not installed!" & RMDIR /S /Q %dep_dir%)

echo --------- Execute DEP_AFTER_INSTALL.bat ---------
%add_to_path% "%dep_dir%\DEP_AFTER_INSTALL.bat"

