@echo off
set name= default_name
set filelocation=%cd%\generated_world
set filelocationfrom=%cd%\world
color 07

:start
echo Welcome to Mine World Remote
set /p intro=Please input: 1=start generation 2=program cosmetics
if %intro% == 1 goto main
if %intro% == 2 goto customs

:main
echo hello %name%
echo here we will create your world.
echo please make sure %filelocation% is the right file location, if it's not replace it in settings
pause
xcopy  %filelocationfrom% %filelocation% /E
goto start

:customs
echo what would you like to configure
echo 0=file storage 1=name 2=version info 3=color 4=return to start
echo as of the current version these settings do not save, do not get attached to them
set /p choicecustoms=
if %choicecustoms% == 0 goto locate
if %choicecustoms% == 1 goto customsname
if %choicecustoms% == 2 goto infocustoms
if %choicecustoms% == 3 goto colorcustoms
if %choicecustoms% == 4 goto start

:locate
echo where file to name
echo make sure name is real "C:\Minceraft\World"
echo this is the current directory %filelocation%
echo we will change it for easy and free
echo ---------------------------------------------
echo input the directory that the file is going to be copied to
set /p filelocation=
echo %filelocation%
pause
echo input the directory the file is being copied from
set /p filelocationfrom=
echo %filelocationfrom%
pause
goto main

:customsname
echo your current name is %name%
echo what would you like to be regarded as?
set /p name=
goto customs

:infocustoms
echo Version 1.1.0a
echo This program is for remotely making Minecraft worlds.
pause
goto customs

:colorcustoms
set /p colorschoice=
color %colorschoice%
goto customs
