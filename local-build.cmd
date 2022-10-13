@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set PATH=%DOWNLOADS_DIR%\nasm-2.15.05;%DOWNLOADS_DIR%\Golink

nasm -f win64 main.asm -o main.obj
GoLink /entry:Start /console kernel32.dll main.obj
pause