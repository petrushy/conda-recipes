
httrack http://docs.astropy.org/en/v1.0.5/


:: wget -r --no-parent http://astropy.readthedocs.org/en/v0.4.1/
:: copy documentation

:: The source path should not be trailed with a backlash..

xcopy "%SRC_DIR%\docs.astropy.org\en\v1.0.5"  "%PREFIX%\doc\astropy" /y /s /e /i
