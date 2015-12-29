
httrack http://ipython.org/ipython-doc/3/


:: wget -r --no-parent http://astropy.readthedocs.org/en/v0.4.1/
:: copy documentation

:: The source path should not be trailed with a backlash..

xcopy "%SRC_DIR%\ipython.org\ipython-doc\3"  "%PREFIX%\doc\ipython" /y /s /e /i
