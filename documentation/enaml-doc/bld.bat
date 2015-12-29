
httrack http://nucleic.github.io/enaml/docs


:: wget -r --no-parent http://astropy.readthedocs.org/en/v0.4.1/
:: copy documentation

:: The source path should not be trailed with a backlash..

xcopy "%SRC_DIR%\nucleic.github.io/enaml/docs"  "%PREFIX%\doc\enaml" /y /s /e /i
