@echo off
cd /d %~dp0

whoami /priv | find "SeDebugPrivilege"  > nul
if %errorlevel% neq 0 (
@@powershell start-process %~0 -verb runas
@echo Restarting as Administrator
@exit
)

rem ########################################
rem ##             LOL Helper             ##
rem ##             2020/10/03             ##
rem ########################################


rem ########################################
rem #### Defines
set PSx64=%SystemRoot%\system32\WindowsPowerShell\v1.0\powershell.exe
set FormPS=""%cd%\main.ps1""


rem ########################################
rem #### PowerShell Settings
%PSx64% Set-ExecutionPolicy RemoteSigned



rem ########################################
rem #### Main_FormPS
%PSx64% -Command %FormPS%



rem ########################################
rem #### PowerShell Settings
%PSx64% Set-ExecutionPolicy Restricted

echo the process has been closed...
echo;
echo press any key to exit...

pause > nul 2> nul
exit
