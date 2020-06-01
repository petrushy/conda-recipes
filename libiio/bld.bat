:: THIS SCRIPT IS NOT WORKING NEEDS TO BE DEVELOPED..

mkdir %SRC_DIR%\build
cd %SRC_DIR%\build

set BUILD_TYPE=Release
:: set BUILD_TYPE=RelWithDebInfo
:: set BUILD_TYPE=Debug

cmake -G "%CMAKE_GENERATOR% Win64" ^
      -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
      -DENABLE_DOXYGEN=OFF ^ 
      -DPYTHON_BINDINGS=ON ^
      -DENABLE_LOGGING=ON ^
      -DENABLE_IPV6:BOOL=OFF ^
      -DCMAKE_PREFIX_PATH="%LIBRARY_PREFIX%" ^
      -DCMAKE_BUILD_TYPE=%BUILD_TYPE% ^
      %SRC_DIR%
if errorlevel 1 exit \b 1

cmake --build . --config %BUILD_TYPE% --target install
if errorlevel 1 exit \b 1