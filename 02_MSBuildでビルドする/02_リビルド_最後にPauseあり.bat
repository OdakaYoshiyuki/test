@echo off
rem まず開発者用コマンドプロンプトを起動してから
call "C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\Tools\VsDevCmd.bat"

rem MSBuildでビルドする(C++)
cd %~dp0
MSBuild C:\Users\Y_ODAKA\Desktop\Git\01_SBL_Xaqro_Printer_Odaka1_from_OneDrive\SBL_Xaqro_Printer\build_sim\TARGET.sln /t:rebuild
if %ERRORLEVEL% neq 0 (
    echo ErrorLevel:%ERRORLEVEL%
    echo ビルド失敗
)
pause
