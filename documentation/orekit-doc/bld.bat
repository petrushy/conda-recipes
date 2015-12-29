
:: copy documentation

xcopy "%RECIPE_DIR%\site"  "%PREFIX%\doc\orekit " /y /s /e /i


:: See
:: http://docs.continuum.io/conda/build.html
:: for a list of environment variables that are set during the build process.
