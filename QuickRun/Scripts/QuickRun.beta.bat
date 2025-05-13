@echo off
setlocal enabledelayedexpansion

if "%~1"=="" exit /b
set "search_param=%~1"

for /f "tokens=1-3 delims=," %%a in (QuickRun.beta.txt) do (
    set "first_field=%%a"
    
    :: 将字段中的|替换为特殊字符§
    set "safe_field=!first_field:|=§!"
    
    :: 检查是否包含分隔符
    echo !safe_field! | find "§" >nul
    if !errorlevel! equ 0 (
        :: 逐个检查分割后的部分
        for /f "tokens=1,* delims=§" %%x in ("!safe_field!") do (
            if /i "%%x"=="%search_param%" (
                echo %%b
                exit /b
            )
            set "rest_part=%%y"
            :check_rest
            for /f "tokens=1,* delims=§" %%m in ("!rest_part!") do (
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
        :: 无分隔符，直接比较
        if /i "!first_field!"=="%search_param%" (
            echo %%b
            exit /b
        )
    )
)

endlocal