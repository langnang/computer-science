@echo off

set /p path0=�������ļ���·��: 

cd "%path0%"

:Start
set /p str1=������Ҫ�滻���ļ����ͣ����滻�ո񣩣�

set /p str2=�������滻����ļ����ͣ�ȥ����ֱ�ӻس�����

echo.

echo �����޸��ļ������У����Ժ򡭡�

for /f "delims=" %%a in ('dir /s /b ^|sort /+65535') do (

if "%%~nxa" neq "%~nx0" (

set "file=%%a"

set "name=%%~na"

set "extension=%%~xa"

call set "extension=%%extension:%str1%=%str2%%%"

setlocal enabledelayedexpansion

ren "!file!" "!name!!extension!" 2>nul

endlocal

)

)

set /p a=�Ƿ�����ڸ�·��ִ�в�����y/n��: 
if /i "%a%"=="n" exit
if /i "%a%"=="y" goto :Start
exit;