@echo off

set DOWNLOADS_DIR=%USERPROFILE%\Downloads
set PATH=^
%DOWNLOADS_DIR%\nasm-2.16.01-win64\nasm-2.16.01;^
%DOWNLOADS_DIR%\x86_64-8.1.0-release-posix-seh-rt_v6-rev0\mingw64\bin;

ndisasm.exe -b 64 .\main.exe > ndisasm_output.txt
objdump.exe -M intel  -S .\main.exe > objdump_output.txt
pause
