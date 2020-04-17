@echo off
set textFile="progress.txt"
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