@echo off
C:
cd C:\Scripts
CLS
rem scrcpy basado en el de Tadeu-Primo (internet): 2560:1080:0:450, pero manteniendo la proporcion de 1920/1200
rem 2560 x 1600 cutting 0 : 0
rem left eye
rem OBS: transform: Pos 0 : -234 | Rot: 0.0 | Size: 3327 : 1770 ||| Left 119 : Right 693 : Top 244 : Bottom 65
rem @CMD /C START /B /BELOWNORMAL "" /D "C:\Users\eaide\AppData\Roaming\SideQuest\scrcpy" "C:\Users\eaide\AppData\Roaming\SideQuest\scrcpy\scrcpy-noconsole.exe" -f --no-control --crop 2560:1600:0:0 -b 25M --max-fps 30
rem right eye
rem OBS: transform: Pos 0 : -925 | Rot: 0.0 | Size: 3534 : 2209 ||| Left 673 : Right 207 : Top 0 : Bottom 111
@CMD /C START /B /BELOWNORMAL "" /D "C:\Users\eaide\AppData\Roaming\SideQuest\scrcpy" "C:\Users\eaide\AppData\Roaming\SideQuest\scrcpy\scrcpy-noconsole.exe" -f --no-control --crop 2560:1600:1280:150 -b 25M --max-fps 30
rem
rem 25 fps ! using This !!
rem 

