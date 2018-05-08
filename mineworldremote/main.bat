@echo off
rem ////////////////////////////////
rem this is a licensed copy of MWR Copyright 2018 darkenmoonz Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
rem ////////////////////////////////
set name= default_name
set filelocation=nil
set filelocationbeliever=nil
color 07

:start
echo Welcome to Mine World Remote
set /p intro=Please input: 1=setup 2=program cosmetics
if %intro% == 1 goto main
if %intro% == 2 goto customs

:main
echo hello %name%
echo here we will create you r world.
echo please make sure %filelocation% is the right file location, if it's not replace it in settings
pause
Robocopy  %filelocationbeliever% %filelocation%
pause

:customs
echo what you'd like to configure
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
echo input new locate now
set /p filelocation=
echo this is it %filelocation%
pause
echo now where file from(name the directory this foler in eg. C:\You\Mineworld\bat.exe)
set /p filelocationbeliever=
echo is this it %filelocationbeliever%
pause
goto main

:customsname
echo your current name is %name%
echo what would you like to be regarded as?
set /p name=
goto customs

:infocustoms
echo Version 1.0.0a russin english translation
echo This program is for remotely making Minecraft worlds.
pause
goto customs

:colorcustoms
echo what colors?
echo bat file are made with special color index of number number no space learn to code 
set /p colorschoice=
color %colorschoice%
goto customs
