
httrack http://numba.pydata.org/numba-doc/0.18.2/

:: wget -erobots=off --no-parent --wait=1 --limit-rate=20K -r -p -U "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1)" -A htm,html,css,js,json,gif,jpeg,jpg,bmp http://astropy.readthedocs.org/en/v0.4.1/

:: wget -r --no-parent http://astropy.readthedocs.org/en/v0.4.1/
:: copy documentation

xcopy "%SRC_DIR%\numba.pydata.org\numba-doc\0.18.2"  "%PREFIX%\doc\numba" /y /s /e /i
