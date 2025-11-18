@echo off
if "%~1"=="" (echo no args & exit/b)

if not exist %~dp0QuickRun.txt (echo QuickRun.txt Lost & exit/b)

for /f "tokens=1-3 delims=," %%A in (%~dp0QuickRun.txt) do (
    if /i "%%A"=="%~1" (
        %%B
        exit/b
    )
)