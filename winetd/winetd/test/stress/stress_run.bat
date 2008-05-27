del /Q ..\..\out\winetd.log
rem start ..\..\out\winetd.exe --fg --config winetd.conf
start ..\..\out\winetd.exe --fg --debug --config winetd.conf

rem :ClientLoop

del /Q pids\*.*
call clients_run.bat
rem for /L %%j in (0,1,39) do start client.bat
rem ping -n 1 localhost >nul
rem goto ClientLoop
