
httrack http://sphinx-doc.org/index.html

:: wget -r --no-parent http://astropy.readthedocs.org/en/v0.4.1/
:: copy documentation

:: The source path should not be trailed with a backlash..

xcopy "%SRC_DIR%\sphinx-doc.org"  "%PREFIX%\doc\sphinx" /y /s /e /i
