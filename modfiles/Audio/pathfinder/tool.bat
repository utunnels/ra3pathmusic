if exist nwjs\lock (
goto exit
)
if exist nwjs\nwjs.exe (
echo >nwjs\lock
nwjs\nwjs.exe -y
del nwjs\nwjs.* /q
del nwjs\lock /q
)
start nwjs\nw.exe mustools
:exit
