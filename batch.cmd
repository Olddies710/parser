@Echo off
echo What you wanna do?
echo 1. Extract
echo 2. Compile
:setp
set/p"echo=>"
if %echo%==1 goto extract
if %echo%==2 goto compile
if %echo%==exit goto nq
goto setp
:nq
cls
exit
:extract
cls
picparser.exe -x Tibia.pic
echo Extracted!
pause
exit
:compile
cls
picparser.exe -c NewPic.pic
echo Compiled!
pause
exit