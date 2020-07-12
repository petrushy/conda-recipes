setlocal EnableDelayedExpansion
@echo on

:: define NOMINMAX since gnuradio headers expect min/max to be functions not macros
set "CFLAGS=%CFLAGS% -DNOMINMAX"
set "CXXFLAGS=%CXXFLAGS% -DNOMINMAX"

:: Make a build folder and change to it
mkdir build
cd build

:: configure
:: enable components explicitly so we get build error when unsatisfied
cmake -G "Ninja" ^
    -DCMAKE_BUILD_TYPE:STRING=Release ^
    -DCMAKE_INSTALL_PREFIX:PATH="%LIBRARY_PREFIX%" ^
    -DCMAKE_PREFIX_PATH:PATH="%LIBRARY_PREFIX%" ^
    -DPYTHON_EXECUTABLE:PATH="%PYTHON%" ^
    -DBoost_NO_BOOST_CMAKE=ON ^
    -DGR_PYTHON_DIR:PATH="%SP_DIR%" ^
    -DENABLE_DOXYGEN=OFF ^
    ..
if errorlevel 1 exit 1

<<<<<<< HEAD
:: Install
copy %SRC_DIR%\%SLN_PLAT%\Release\dll\libfec-1.0.dll %LIBRARY_BIN%\
if errorlevel 1 exit 1
copy %SRC_DIR%\%SLN_PLAT%\Release\dll\libfec-1.0.lib %LIBRARY_LIB%\
if errorlevel 1 exit 1
copy %SRC_DIR%\%SLN_PLAT%\Release\dll\libfec-1.0.pdb %LIBRARY_LIB%\
if errorlevel 1 exit 1
copy %SRC_DIR%\%SLN_PLAT%\Release\lib\libfec-1.0.lib %LIBRARY_LIB%\libfec-1.0_static.lib
if errorlevel 1 exit 1
mkdir %LIBRARY_INC%\libfec-1.0
copy %SRC_DIR%\libusb.h %LIBRARY_INC%\libfec-1.0\
=======
:: build
cmake --build . --config Release -- -j%CPU_COUNT%
if errorlevel 1 exit 1

:: install
cmake --build . --config Release --target install
>>>>>>> 5ab0387100e52870f7389aaf8b7c242f76d4bd6f
if errorlevel 1 exit 1
