@echo off
setlocal
set "command=%*"
start "" "cmd" /k %command%
endlocal