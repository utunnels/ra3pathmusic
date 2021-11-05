for %%i in (track.mus.files\*.wav) do (mustools\snrtool.exe 30 %%i track.mus.files\%%~ni)

pause