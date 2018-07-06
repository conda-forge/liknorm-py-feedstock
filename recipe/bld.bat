%PYTHON% -m pip install --no-deps --ignore-installed ^
    --global-option=build_ext ^
    --global-option="-I%LIBRARY_INC%" ^
    --global-option="-L%LIBRARY_LIB%" ^
    --global-option="-lliknorm" .

if errorlevel 1 exit 1
