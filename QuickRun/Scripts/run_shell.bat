@echo off
setlocal
set "command=%*"
start "" "explorer" shell:"%command%"
endlocal