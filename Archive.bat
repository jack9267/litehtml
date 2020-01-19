@echo off
if exist SDK.7z del SDK.7z
Tools\7za a SDK.7z ./include ./Lib
pause