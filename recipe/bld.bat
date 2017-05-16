set LIB=%LIBRARY_LIB%;.\lib;%LIB%
set LIBPATH=%LIBRARY_LIB%;.\lib;%LIBPATH%
set INCLUDE=%LIBRARY_INC%;%INCLUDE%

"%PYTHON%" setup.py build_ext -I"%LIBRARY_INC%" -lliknorm -L"%LIBRARY_LIB%" ^
           install --single-version-externally-managed --record record.txt
if errorlevel 1 exit 1
