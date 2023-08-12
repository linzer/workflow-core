@echo off
setlocal
echo Usuwanie BIN i OBJ ...
REM Delete 'BIN' and 'OBJ' folders
for /d /r %%d in (bin,obj) do @if exist "%%d" rd /s/q "%%d"

echo Usuwanie *.bak ...
REM Delete *.bak files
FOR /r %%G IN (*.bak) DO del "%%G"
REM to samo, ale zapisane troch?dooko³a ;) :
REM FOR /f "tokens=*" %%G IN ('DIR /B /A-D /S *.bak') DO del "%%G"

echo Usuwanie *.log ...
REM Delete *.log files
FOR /R %%H IN (*.log) DO del "%%H"

endlocal
echo Koniec