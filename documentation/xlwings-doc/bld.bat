
httrack http://docs.xlwings.org/en/latest/


:: wget -r --no-parent http://astropy.readthedocs.org/en/v0.4.1/
:: copy documentation

:: The source path should not be trailed with a backlash..

xcopy "%SRC_DIR%\docs.xlwings.org\en\latest"  "%PREFIX%\doc\xlwings" /y /s /e /i
