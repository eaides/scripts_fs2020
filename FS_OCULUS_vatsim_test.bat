@echo off
cd C:\Scripts
call C:\Scripts\FS_start.bat
rem
rem FROM HERE IS DIFFERENT FOR VATSIM OR IVAO
rem
@CMD /C START /B /BELOWNORMAL "" /D "C:\Users\eaide\AppData\Local\vPilot" "C:\Users\eaide\AppData\Local\vPilot\vPilot.exe"
rem
rem FROMM HERE IS THE SAME FOR BOTH
rem
call C:\Scripts\FS_middle.bat
rem
rem FROM HERE IS DIFFERENT FOR VATSIM OR IVAO
rem
@CMD /C START /B /BELOWNORMAL "" /D "F:\My_FS_community\panelsVR\vs-radio-toolbar\server" "F:\My_FS_community\panelsVR\vs-radio-toolbar\server\VSR.exe"
wmic process where name="vPilot.exe" CALL setpriority "below normal"
wmic process where name="VSR.exe" CALL setpriority "below normal"
rem
rem FROMM HERE IS THE SAME FOR BOTH
rem
call C:\Scripts\FS_end.bat
CLS