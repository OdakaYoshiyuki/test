@echo off
rem �܂��J���җp�R�}���h�v�����v�g���N�����Ă���
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat"

rem MSBuild�Ńr���h����(C++)
cd %~dp0
MSBuild C:\Users\Y_ODAKA\Desktop\Git\01_SBL_Xaqro_Printer_Odaka1_from_OneDrive\SBL_Xaqro_Printer\build_sim\TARGET.sln /t:rebuild
if %ERRORLEVEL% neq 0 (
    echo ErrorLevel:%ERRORLEVEL%
    echo �r���h���s
)
pause
