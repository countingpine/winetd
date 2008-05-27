@echo off

rem Установка флага начала обновления

set XX1PID=

for /F "Tokens=3" %%I in ('getpids.exe') do set XX1PID=%%I

if "%XX1PID%" == "" (
  echo.
  echo ===^> ERROR: The current process id could not be retrieved.
  echo.

  goto Exit
)

echo "1" > pids\%XX1PID%update.flg

:UpdateLoop
echo %XX1PID%| nc -w 30 127.0.0.1 4444

for /L %%j in (0,1,4) do (
  echo Waiting... %XX1PID%
  ping -n 2 localhost >nul
  if not exist pids\%XX1PID%update.flg goto BreakLoop
)

goto UpdateLoop

:BreakLoop
exit