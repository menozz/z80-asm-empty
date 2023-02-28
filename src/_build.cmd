@echo off

cd %~dp0

..\tools\sjasmplus\sjasmplus --sld=obj\main.sld --fullpath main.asm --lst=obj\main.lst

if %errorlevel% neq 0 exit /b %errorlevel%