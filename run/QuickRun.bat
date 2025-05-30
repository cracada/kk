@echo off
if "%~1"=="" (echo 缺少参数 & exit/b)

if not exist QuickRun.txt (echo 找不到QuickRun.txt & exit/b)

for /f "tokens=1-3 delims=," %%A in (QuickRun.txt) do (
    if /i "%%A"=="%~1" (
        %%B
        exit/b
    )
)

::echo 未找到参数: %~1