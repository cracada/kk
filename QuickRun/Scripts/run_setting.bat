@echo off
setlocal
set "command=%*"
start "" "explorer" "ms-settings:%command%"
endlocal