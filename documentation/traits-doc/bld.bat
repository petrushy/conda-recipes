httrack https://traits.readthedocs.org/en/4.4.0/

:: copy documentation

:: The source path should not be trailed with a backlash..

xcopy "%SRC_DIR%\traits.readthedocs.org/en/4.4.0"  "%PREFIX%\doc\traits" /y /s /e /i
