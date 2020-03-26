@echo off

if [%1]==[] GOTO INVALIDINPUT
if [%2]==[] GOTO INVALIDINPUT
if [%3]==[] GOTO INVALIDINPUT
if [%4]==[] GOTO INVALIDINPUT

SET folder=%1
SET textFile=%2
SET sourceFile=%3
SET header_File=%4

IF EXIST %folder% (
GOTO AFTERDIRECTORY 
)
MKDIR %folder%

:AFTERDIRECTORY
cd %folder%
set x=0
IF NOT EXIST %textFile% ( 
GOTO AFTERTEXT
)

set /p x=<%textFile%
set /a x="x+1"
:AFTERTEXT
(
echo %x% 
)>%textFile%

set x=0
IF NOT EXIST %sourceFile% ( 
GOTO AFTERSOURCE 
)

set /p x=<%sourceFile%
set /a x="x+1"
:AFTERSOURCE
(
echo %x% 
)>%sourceFile%

IF NOT EXIST %header_File% ( 
GOTO AFTERHEADER 
)

set /p x=<%header_File%
set /a x="x+1"
:AFTERHEADER
(
echo %x% 
)>%header_File%

cd ..
IF NOT EXIST Text_Files (
MKDIR Text_Files 
)
copy /y %folder%\*.txt Text_Files

IF NOT EXIST Source_Files (
MKDIR Source_Files 
)
copy /y %folder%\*.txt Source_Files

IF NOT EXIST Header_Files (
MKDIR Header_Files 
)
copy /y %folder%\*.txt Header_Files