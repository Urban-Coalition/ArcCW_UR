set back=%cd%
set "dir=%~dp0"
cd "D:\Program Files\VTFLib\bin\x64"
vtfcmd.exe -folder "%back%\*.png" -output "%back%" -format "dxt5"

for %%i in ("%back%\*.vtf") do (
echo "UnlitGeneric" > "%back%\%%~ni.vmt"
echo { >> "%back%\%%~ni.vmt"
echo     "$basetexture" "arccw/weaponicons/%%~ni" >> "%back%\%%~ni.vmt"
echo     "$translucent" 1 >> "%back%\%%~ni.vmt"
echo } >> "%back%\%%~ni.vmt"
)

pause