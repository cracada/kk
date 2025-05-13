@echo off
setlocal enabledelayedexpansion

if "%~1"=="" exit /b
set "search_param=%~1"

for /f "tokens=1-3 delims=," %%a in (QuickRun.beta.txt) do (
    set "first_field=%%a"
    
    :: ���ֶ��е�|�滻Ϊ�����ַ���
    set "safe_field=!first_field:|=��!"
    
    :: ����Ƿ�����ָ���
    echo !safe_field! | find "��" >nul
    if !errorlevel! equ 0 (
        :: ������ָ��Ĳ���
        for /f "tokens=1,* delims=��" %%x in ("!safe_field!") do (
            if /i "%%x"=="%search_param%" (
                echo %%b
                exit /b
            )
            set "rest_part=%%y"
            :check_rest
            for /f "tokens=1,* delims=��" %%m in ("!rest_part!") do (
                if /i "%%m"=="%search_param%" (
                    echo %%b
                    exit /b
                )
                if not "%%n"=="" (
                    set "rest_part=%%n"
                    goto :check_rest
                )
            )
        )
    ) else (
        :: �޷ָ�����ֱ�ӱȽ�
        if /i "!first_field!"=="%search_param%" (
            echo %%b
            exit /b
        )
    )
)

endlocal