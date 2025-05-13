@echo off
setlocal
set "command=%2 %3 %4"
::简单处理空格，太粗糙了

IF "%1"=="cmd" GOTO :cmd
IF "%1"=="control" GOTO :control
IF "%1"=="set" GOTO :set
IF "%1"=="shell" GOTO :shell

:cmd
start "" "cmd" /k %command%
goto :end

:shell
start "" "explorer" shell:"%command%"
goto :end

:set
start "" "explorer" "ms-settings:%command%"
goto :end

:control
control.exe "%command%"
goto :end

:end
endlocal