@echo off
setlocal enabledelayedexpansion
set "string=abcdefghijklmnopqrstuvwxyz"
set "result="
for /L %%i in (1,1,30) do call :add
echo %result%
goto :eof

:add
set /a x=%random% %% 26 
set result=%result%!string:~%x%,1!
goto :eof
