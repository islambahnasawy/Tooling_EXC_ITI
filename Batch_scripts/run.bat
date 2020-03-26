@echo off

for /F "tokens=1-4" %%G IN (TXT\input.txt) Do ( 
CALL back_end.bat %%G %%H %%I %%J
)