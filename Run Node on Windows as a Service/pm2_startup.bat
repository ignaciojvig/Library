@echo off
set HOMEDRIVE=C:
set PM2_HOME=c:\etc\.pm2

@REM Ensure that pm2 command is part of your PATH variable
@REM  if you're not sure, add  it here, as follow:
@REM (Remove brackets and replace 'user' by your User)
set path=C:\Users\{user}\AppData\Roaming\npm;%path% 

@REM Optionally, you can add 'pm2 kill' just before 
@REM  resurrect (adding a sleep between 2 commands):
@REM  	pm2 kill
@REM  	timeout /t 5 /nobreak > NUL
@REM  	pm2 resurrect
@REM otherwise, you can simple call resurrect as follow:
pm2 resurrect

echo "Done"