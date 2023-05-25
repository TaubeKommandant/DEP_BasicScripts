@echo off

REM echo {{{{{{{{{{{{{{{{
REM echo %0
REM echo %1
REM echo %2
REM echo %3
REM echo }}}}}}}}}}}}}}}}}

set batToRunAbsolutePath=%1
set batToRunAbsolutePath=%batToRunAbsolutePath:"=%

NET FILE 1>NUL 2>NUL
if '%errorlevel%' == '0' ( goto hasPrivileges )

setlocal DisableDelayedExpansion
set "batchPath=%batToRunAbsolutePath%"
setlocal EnableDelayedExpansion
ECHO Set UAC = CreateObject^("Shell.Application"^) > "%temp%\OEgetPrivileges.vbs"
ECHO UAC.ShellExecute "!batchPath!", "ELEV", "", "runas", 1 >> "%temp%\OEgetPrivileges.vbs"
"%temp%\OEgetPrivileges.vbs"

:hasPrivileges
setlocal & pushd .
cmd /c %batToRunAbsolutePath%
