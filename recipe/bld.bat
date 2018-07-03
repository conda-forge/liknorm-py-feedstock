set LIB=%LIBRARY_LIB%;.\lib;%LIB%
set LIBPATH=%LIBRARY_LIB%;.\lib;%LIBPATH%
set INCLUDE=%LIBRARY_INC%;%INCLUDE%

IF "%PY_VER%"=="2.7" (
    set LLIB=-lliknorm -lhcephes
    copy %PREFIX%\Lib\hcephes.dll %LIBRARY_BIN%
) ELSE (
    set LLIB=-lliknorm
)

%PYTHON% setup.py build_ext -I"%LIBRARY_INC%" %LLIB% -L"%LIBRARY_LIB%" ^
           install --single-version-externally-managed --record record.txt

copy %PREFIX%\Lib\liknorm.dll %LIBRARY_BIN%

if errorlevel 1 exit 1
