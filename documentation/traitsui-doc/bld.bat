httrack https://traitsui.readthedocs.org/en/latest/

:: copy documentation

:: The source path should not be trailed with a backlash..

xcopy "%SRC_DIR%\traitsui.readthedocs.org/en/latest"  "%PREFIX%\doc\traitui" /y /s /e /i
