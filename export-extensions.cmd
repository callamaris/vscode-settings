
call code --list-extensions > list.txt

REM @echo off

echo FOR /D %%%%p IN ("%%USERPROFILE%%\.vscode\extensions\*.*") DO rmdir "%%%%p" /s /q> install-extensions.cmd
(for /f "delims=" %%L in (list.txt) do @echo call code --install-extension %%L)>> install-extensions.cmd

del list.txt