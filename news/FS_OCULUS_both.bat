@echo off
C:
cd C:\Scripts
logman stop HolographicShell -ets
CLS

pause bbb

if %1=="ivao" goto ivao
if %1=="vatsim" goto vatsim

echo Invalid argument: %1
echo.
echo Usage:  %~n0  network
echo.
echo Where:  network may be "ivao" or "vatsim" only
pause aaa
GOTO:EOF


:ivao
REM Preprocess ivao
set network=ivao
GOTO Common

:vatsim
REM Preprocess vatsim
set network=vatsim
GOTO Common






:Common

goto one



rem @CMD /C START /B /BELOWNORMAL "" /D "C:\Program Files (x86)\Winamp" "C:\Program Files (x86)\Winamp\winamp.exe" /play
rem @CMD /C START /MIN /B /BELOWNORMAL "" /D "C:\Program Files\Opera" "C:\Program Files\Opera\launcher.exe" https://map.vatsim.net/
@CMD /C START /B /BELOWNORMAL "" /D "F:\FSUIPC7" "F:\FSUIPC7\FSUIPC7.exe"
@CMD /C START /B /BELOWNORMAL "" /D "C:\Program Files\Oculus\Support\oculus-client" "C:\Program Files\Oculus\Support\oculus-client\OculusClient.exe"
@CMD /C START /B /BELOWNORMAL "w1" /D "C:\Windows" "C:\Windows\explorer.exe" ms-settings:apps-volume
@CMD /C START /B /BELOWNORMAL "w2" /D "C:\Windows" "rundll32.exe" Shell32.dll,Control_RunDLL Mmsys.cpl,,0

taskkill /IM "webserver.exe" /T /F 
CLS
rem @CMD /C START /B /ABOVENORMAL "" /D "C:\Program Files\MSFS2020 Map Enhancement" "C:\Program Files\MSFS2020 Map Enhancement\MSFS2020 Map Enhancement.exe"
rem @CMD /C START /B /BELOWNORMAL "" /D "C:\Program Files (x86)\SUR Air\SUR Acars" "C:\Program Files (x86)\SUR Air\SUR Acars\SALoader.exe"
rem @CMD /C START /B /BELOWNORMAL "" /D "F:\My_FS_community\FSLTL\fsltl-traffic-injector" "F:\My_FS_community\FSLTL\fsltl-traffic-injector\fsltl-trafficinjector.exe"
rem @CMD /C START /MIN /B /BELOWNORMAL "" /D "F:\My_FS_community\utilities\msfs-pushback-helper-app-v2.5_1dybm" "F:\My_FS_community\utilities\msfs-pushback-helper-app-v2.5_1dybm\PushbackHelper.exe"
@CMD /C START /MIN /B /BELOWNORMAL "" /D "F:\My_FS_community\panelsVR\webserver" "F:\My_FS_community\panelsVR\webserver\webserver.exe"
@CMD /C START /B /BELOWNORMAL "" /D "E:\LittleNavmap\Little Navmap" "E:\LittleNavmap\Little Navmap\littlenavmap.exe"
@CMD /C START /B /BELOWNORMAL "" /D "C:\Program Files\Navigraph\Simlink" "C:\Program Files\Navigraph\Simlink\NavigraphSimlink.exe"
@CMD /C START /B /BELOWNORMAL "" /D "C:\Users\eaide\AppData\Local\Programs\Volanta" "C:\Users\eaide\AppData\Local\Programs\Volanta\Volanta.exe"
@CMD /C START /MIN /B /BELOWNORMAL "" /D "C:\Users\eaide\Desktop\HidMacros" "C:\Users\eaide\Desktop\HidMacros\HIDMacros.exe"
@CMD /C START /B /BELOWNORMAL "" /D "C:\Program Files\obs-studio\bin\64bit" "C:\Program Files\obs-studio\bin\64bit\obs64.exe"
@CMD /C START "w3" "D:\Personal_data\Videos\OBS\screenshots"
@CMD /C START /B /BELOWNORMAL "" /D "C:\Program Files (x86)\SUR Air\Sur Acars" "C:\Program Files (x86)\SUR Air\Sur Acars\setup.exe"
@CMD /C START /MIN /B /BELOWNORMAL "" /D "E:\companel" "E:\companel\companel.exe"
@CMD /C START /B /BELOWNORMAL "" /D "E:\SIM_ACARS_1.4.0" "E:\SIM_ACARS_1.4.0\SIM ACARS.exe"
@CMD /C START /B /BELOWNORMAL "" /D "F:\fseconomy" "F:\fseconomy\FSEconomy.application"
@CMD /C START /B /BELOWNORMAL "" /D "C:\Program Files\SideQuest" "C:\Program Files\SideQuest\SideQuest.exe"
@CMD /C START /B /BELOWNORMAL "" /D "F:\Snaz\" "F:\Snaz\Snaz.exe"
@CMD /C START /B /BELOWNORMAL "" /D "C:\Users\eaide\AppData\Local\Programs\fbw-installer" "C:\Users\eaide\AppData\Local\Programs\fbw-installer\FlyByWire Installer.exe" 
rem @CMD /C START /B /BELOWNORMAL "" /D "F:\My_FS_community\OrbxLibrary\msfs\REX AccuSeason" "F:\My_FS_community\OrbxLibrary\msfs\REX AccuSeason\rexlandscapes.exe" 
@CMD /C START /B /BELOWNORMAL "" /D "F:\My_FS_community\utilities\MDAdjustAircraft_aAk5t\MDAdjustAircraft" "F:\My_FS_community\utilities\MDAdjustAircraft_aAk5t\MDAdjustAircraft\MDAdjustAircraft.exe"
rem
rem @nircmd.exe service start OVRService
rem
CLS
rem echo Pulsa una tecla para arrancar el simulador
rem pause
rem echo.
rem CLS
rem @CMD /C START /MAX /B /ABOVENORMAL "" shell:AppsFolder\Microsoft.FlightSimulator_8wekyb3d8bbwe!App "-FastLaunch"

rem
:question2
CLS
@echo "Which aircraft do you want to fly (for PDF docs):
@echo 1 . cessna 172
@echo 2 . cessna 310
@echo 3 . xCub bush
@echo 4 . B737 PMDG
@echo 0 . do nothing
set /p Fdoc=Select needed aircraft option:
if /I "%Fdoc%"=="1" goto afterQuestion2
if /I "%Fdoc%"=="2" goto afterQuestion2
if /I "%Fdoc%"=="3" goto afterQuestion2
if /I "%Fdoc%"=="4" goto afterQuestion2
if /I "%Fdoc%"=="0" goto afterQuestion2
CLS
goto question2
:afterQuestion2
if /I "%Fdoc%"=="0" goto afterFdoc
if /I "%Fdoc%"=="1" goto Fdoc1
if /I "%Fdoc%"=="2" goto Fdoc2
if /I "%Fdoc%"=="3" goto Fdoc3
if /I "%Fdoc%"=="4" goto Fdoc4
goto afterFdoc
:Fdoc1
del /F /Q F:\My_FS_community\panelsVR\webserver\root\files\*.*
copy F:\My_FS_community\panelsVR\webserver\root\files\c172\*.* F:\My_FS_community\panelsVR\webserver\root\files\*.*
copy F:\My_FS_community\panelsVR\webserver\root\files\charts\*.* F:\My_FS_community\panelsVR\webserver\root\files\*.*goto goto afterFdoc
:Fdoc2
del /F /Q F:\My_FS_community\panelsVR\webserver\root\files\*.*
copy F:\My_FS_community\panelsVR\webserver\root\files\c310\*.* F:\My_FS_community\panelsVR\webserver\root\files\*.*
copy F:\My_FS_community\panelsVR\webserver\root\files\charts\*.* F:\My_FS_community\panelsVR\webserver\root\files\*.*goto goto afterFdoc
:Fdoc3
del /F /Q F:\My_FS_community\panelsVR\webserver\root\files\*.*
copy F:\My_FS_community\panelsVR\webserver\root\files\xcub\*.* F:\My_FS_community\panelsVR\webserver\root\files\*.*
copy F:\My_FS_community\panelsVR\webserver\root\files\charts\*.* F:\My_FS_community\panelsVR\webserver\root\files\*.*goto goto afterFdoc
:Fdoc4
del /F /Q F:\My_FS_community\panelsVR\webserver\root\files\*.*
copy F:\My_FS_community\panelsVR\webserver\root\files\pmdg737\*.* F:\My_FS_community\panelsVR\webserver\root\files\*.*
copy F:\My_FS_community\panelsVR\webserver\root\files\charts\*.* F:\My_FS_community\panelsVR\webserver\root\files\*.*goto afterFdoc
:afterFdoc
CLS

:question1
CLS
set /p Dau=Do you want to capture screenshots to Discord? (Y/N):
if /I "%Dau%"=="Y" goto afterQuestion1
if /I "%Dau%"=="N" goto afterQuestion1
if /I "%Dau%"=="y" goto afterQuestion1
if /I "%Dau%"=="n" goto afterQuestion1
CLS
goto question1
:afterQuestion1



CLS
echo "START manually the FS2020 as Administrator"
echo.
rem
echo Espera a que arranque el simulador, para aplicar las prioridades y el Oculus ASW
echo !!! Tener Rift Link Activo !!! But do not enter VR in the SIM
echo. 
echo pulse ENTER para continuar
pause
echo.

rem right eye
rem OBS USED: transform: Pos 0 : -925 | Rot: 0.0 | Size: 3534 : 2209 ||| Left 673 : Right 207 : Top 0 : Bottom 111
rem OBS USED THIS: transform: Pos 0 : -699 | Rot: 0.0 | Size: 3534 : 2209 ||| Left 673 : Right 207 : Top 0 : Bottom 111
rem rem rem @CMD /C START /B /BELOWNORMAL "" /D "C:\Users\eaide\AppData\Roaming\SideQuest\scrcpy" "C:\Users\eaide\AppData\Roaming\SideQuest\scrcpy\scrcpy-noconsole.exe" -f --no-control --crop 2560:1600:1280:150 -b 25M --max-fps 30
rem
rem 25 fps ! using This !!
rem 

	rem 12.5 fps
	rem using oculus mirror
	rem @CMD /C START /MIN /B /BELOWNORMAL "" /D "C:\Program Files\Oculus\Support\oculus-diagnostics" "C:\Program Files\Oculus\Support\oculus-diagnostics\OculusMirror.exe" -Size 1280 720 --DisableTimewarp --SymmetricFov --LeftEyeOnly --DisableFovStencil --IncludeSystemGui --IncludeNotifications --FovTanAngleMultiplier 0.785 0.785
	rem The default is to display a 1366x768 window showing a rectilinear view
	rem of the right eye image, with IncludeGuardian, IncludeNotifications and IncludeSystemGui options enabled.

if /I "%Dau%"=="N" goto afterDau
if /I "%Dau%"=="n" goto afterDau
@CMD /C START /MIN /B /BELOWNORMAL "" /D "C:\Users\eaide\Desktop\stream\dau-win-v0.11.2" "C:\Users\eaide\Desktop\stream\dau-win-v0.11.2\dau.exe"
:afterDau
echo

@CMD /C START /B /BELOWNORMAL "" /D "C:\Program Files\Oculus\Support\oculus-diagnostics" "C:\Program Files\Oculus\Support\oculus-diagnostics\OculusDebugToolCLI.exe" -f "C:\Scripts\parametros_fs.txt"

wmic process where name="OVRServer_x64.exe" CALL setpriority "above normal"
wmic process where name="FlightSimulator.exe" CALL setpriority "above normal"
wmic process where name="webserver.exe" CALL setpriority "below normal"
wmic process where name="MSIAfterburner.exe" CALL setpriority "below normal"
wmic process where name="NavigraphSimlink.exe" CALL setpriority "below normal"
wmic process where name="launcher.exe" CALL setpriority "below normal"
wmic process where name="opera.exe" CALL setpriority "below normal"
wmic process where name="littlenavmap.exe" CALL setpriority "below normal"
wmic process where name="companel.exe" CALL setpriority "below normal"
wmic process where name="SALoader.exe" CALL setpriority "below normal"
wmic process where name="SIM ACARS.exe" CALL setpriority "below normal"
wmic process where name="Volanta.exe" CALL setpriority "below normal"
wmic process where name="PushbackHelper.exe" CALL setpriority "below normal"
wmic process where name="MDAdjustAircraft.exe" CALL setpriority "below normal"
wmic process where name="SideQuest.exe" CALL setpriority "below normal"
wmic process where name="scrcpy-noconsole.exe" CALL setpriority "normal"
wmic process where name="OculusMirror.exe" CALL setpriority "below normal"
wmic process where name="Snaz.exe" CALL setpriority "below normal"
wmic process where name="rexlandscapes.exe" CALL setpriority "below normal"

wmic process where name="winamp.exe" CALL setpriority "normal"
wmic process where name="HIDMacros.exe" CALL setpriority "normal"
wmic process where name="obs64.exe" CALL setpriority "below normal"
wmic process where name="dau.exe" CALL setpriority "below normal"
wmic process where name="FSEconomy.application" CALL setpriority "below normal"
wmic process where name="FlyByWire Installer.exe" CALL setpriority "normal"
wmic process where name="fsltl-trafficinjector.exe" CALL setpriority "normal"

:one
echo AAAAAAAA
echo %network%
pause
if /I "%network%"=="ivao" goto doIvao
if /I "%network%"=="vatsim" goto doVatsim
goto afterNetwork
:doIvao
echo This is Ivao Only
pause
goto afterNetwork
:doVatsim
echo This is Vatsim Only
pause
goto afterNetwork
:afterNetwork
echo

goto dos2

rem
rem FROM HERE IS DIFFERENT FOR VATSIM OR IVAO
rem
@CMD /C START /B /BELOWNORMAL "" /D "C:\Users\eaide\AppData\Local\vPilot" "C:\Users\eaide\AppData\Local\vPilot\vPilot.exe"
@CMD /C START /B /BELOWNORMAL "" /D "F:\My_FS_community\panelsVR\vs-radio-toolbar\server" "F:\My_FS_community\panelsVR\vs-radio-toolbar\server\VSR.exe"
wmic process where name="vPilot.exe" CALL setpriority "below normal"
wmic process where name="VSR.exe" CALL setpriority "below normal"
rem
rem FROMM HERE IS THE SAME FOR BOTH
rem

:dos2

CLS
echo Espere terminar el vuelo, despues de cerrar el simulador presione una tecla...
pause
echo.

CLS
echo "seguro el simulador esta cerrado ? presione una tecla..."
pause
echo.

CLS
echo restaure BING en el MSFS2020 Map Enhancement y luego presione una tecla...
pause
echo.
@type C:\Windows\System32\drivers\etc\hosts
echo.

CLS
echo presione una tecla para cerrar todos los programas...
pause
echo.

call FS_OCULUS_Close_All.bat

CLS
@type C:\Windows\System32\drivers\etc\hosts
echo.
rem

echo presione una tecla para terminar...
pause
echo.
rem
CLS