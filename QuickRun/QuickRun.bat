@echo off
if "%~1"=="" (echo ȱ�ٲ��� & exit/b)

if not exist QuickRun.txt (echo �Ҳ���QuickRun.txt & exit/b)

for /f "tokens=1-3 delims=," %%A in (QuickRun.txt) do (
    if /i "%%A"=="%~1" (
        %%B
        exit/b
    )
)

::echo δ�ҵ�����: %~1