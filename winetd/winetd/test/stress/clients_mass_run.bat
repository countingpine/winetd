for /L %%j in (0,1,10) do (
call clients_run.bat
ping -n 15 localhost >nul
)