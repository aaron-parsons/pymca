mkdir src
cd src
cp -r %RECIPE_DIR%/../* .

%PYTHON% setup.py install
if errorlevel 1 exit 1

copy scripts\* %SCRIPTS%\
if errorlevel 1 exit 1
