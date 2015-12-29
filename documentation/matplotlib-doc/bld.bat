
cd doc
python make.py html

:: copy documentation

xcopy "%SRC_DIR%\doc\build\html"  "%PREFIX%\doc\matplotlib " /y /s /e /i
