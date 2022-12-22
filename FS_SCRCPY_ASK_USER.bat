rem scrcpy -b 25M -c XXXX:xxxx:XXX:xxx

@echo off
set OLDDIR=%CD%
set velocity=8
set fps=30
set crop=1600:900:2017:510

set v1=1600:900:2017:510
set v2=1832:1920:2000:350
rem el de Tadeu-Primo (internet):
rem set v3=2560:1080:0:450
rem manteniendo proporcion 1920/1200
set v3=2560:1600:0:450
rem
rem el de Tadeu-Primo (internet):
rem set v3=2560:1080:0:450
rem como lo tiene el
set v4=2560:1080:0:450
rem
set v5=1685:950:75:450
set v6=1450:1450:200:200
set v7=2680:1440:-900:50
rem el v8 es sobre 1920x1080, respetando proporciones originales del sidequest
set v8=1920:1080:1680:612
rem el v9 sera sobre 1920x1200, respetando proporicones originatles del sidequest
set v9=1920:1200:1680:351

:pregunta
CLS
echo Available crops:
echo 1) %v1%
echo 2) %v2%
echo 3) %v3%
echo 4) %v4%
echo 5) %v5%
echo 6) %v6%
echo 7) %v7%
echo 8) %v8%
echo 9) %v9%
echo.
echo 0) salir
echo.
set /p Input=Enter your crop choice:
if /I "%Input%"=="1" goto cha1
if /I "%Input%"=="2" goto cha2
if /I "%Input%"=="3" goto cha3
if /I "%Input%"=="4" goto cha4
if /I "%Input%"=="5" goto cha5
if /I "%Input%"=="6" goto cha6
if /I "%Input%"=="7" goto cha7
if /I "%Input%"=="8" goto cha8
if /I "%Input%"=="9" goto cha9
if /I "%Input%"=="0" goto end

goto pregunta

:cha1
set crop=%v1%
goto :ejecuta

:cha2
set crop=%v2%
goto :ejecuta

:cha3
set crop=%v3%
goto :ejecuta

:cha4
set crop=%v4%
goto :ejecuta

:cha5
set crop=%v5%
goto :ejecuta

:cha6
set crop=%v6%
goto :ejecuta

:cha7
set crop=%v7%
goto :ejecuta

:cha8
set crop=%v8%
goto :ejecuta

:cha9
set crop=%v9%
goto :ejecuta

:ejecuta
C:
cd C:\Scripts
CLS
@taskkill /IM "SideQuest.exe" /T /F 
@taskkill /IM "scrcpy-noconsole.exe" /T /F 
CLS
@CMD /C START /MIN /B /BELOWNORMAL "" /D "C:\Users\eaide\AppData\Local\Programs\SideQuest" "C:\Users\eaide\AppData\Local\Programs\SideQuest\SideQuest.exe"
CLS
set /p DUMMY=Ensure that the quest2 is 'on' (disable proximity)
@CMD /C START /MIN /B /BELOWNORMAL "" /D "C:\Users\eaide\AppData\Roaming\SideQuest\scrcpy" "C:\Users\eaide\AppData\Roaming\SideQuest\scrcpy\scrcpy-noconsole.exe" -f --no-control --crop %crop% -b %velocity%M --max-fps %fps%
rem
wmic process where name="SideQuest.exe" CALL setpriority "below normal"
wmic process where name="scrcpy-noconsole.exe" CALL setpriority "below normal"
CLS
echo.
echo Crop Settings = %crop%
echo Velocity = %velocity%
echo Max FPS = %fps%
echo.
echo.

:for_exit
set /p Input=Enter 'E' to finish:
if /I "%Input%"=="E" goto end
if /I "%Input%"=="e" goto end
CLS
goto for_exit

:end
@taskkill /IM "SideQuest.exe" /T /F 
@taskkill /IM "scrcpy-noconsole.exe" /T /F 
chdir /d %OLDDIR%
CLS
echo Bye!
echo




rem C:\Users\eaide\AppData\Roaming\SideQuest\scrcpy\scrcpy-noconsole.exe -f --no-control --crop 1600:900:2017:510 -b 8M --max-fps 30
