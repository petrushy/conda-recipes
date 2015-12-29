
httrack http://matplotlib.org/basemap/

:: copy documentation

:: The source path should not be trailed with a backlash..

xcopy "%SRC_DIR%\matplotlib.org\basemap"  "%PREFIX%\doc\basemap" /y /s /e /i
