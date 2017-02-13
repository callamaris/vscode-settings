
call code --list-extensions > list.txt

REM @echo off
(for /f "delims=" %%L in (list.txt) do @echo call code --install-extension %%L)> install-extensions.cmd

del list.txt