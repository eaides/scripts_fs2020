@echo off
cd C:\Scripts
CLS
taskkill /IM "dau.exe" /T /F 
taskkill /IM "FSUIPC7.exe" /T /F 
taskkill /IM "NavigraphSimlink.exe" /T /F 
taskkill /IM "MSFS2020 Map Enhancement.exe" /T /F 
taskkill /IM "littlenavmap.exe" /T /F 
taskkill /IM "webserver.exe" /T /F 
taskkill /IM "antimicro.exe" /T /F 
taskkill /IM "OculusMirror.exe" /T /F 
taskkill /IM "OculusClient.exe" /T /F 
taskkill /IM "FSUIPC7.exe" /T /F 
taskkill /IM "launcher.exe" /T /F 
taskkill /IM "companel.exe"  /T /F 
taskkill /IM "SALoader.exe"  /T /F 
taskkill /IM "SIM ACARS.exe" /T /F 
taskkill /IM "SURACARS.exe" /T /F 
taskkill /IM "SURACARS_NEW.exe" /T /F 
taskkill /IM "FSEconomy.application" /T /F 
taskkill /IM "opera.exe" /T /F 
taskkill /IM "Volanta.exe" /T /F 
taskkill /IM "PushbackHelper.exe" /T /F 
taskkill /IM "MDAdjustAircraft.exe" /T /F 
taskkill /IM "HIDMacros.exe" /T /F 
taskkill /IM "obs64.exe" /T /F 
taskkill /IM "SideQuest.exe" /T /F 
taskkill /IM "scrcpy-noconsole.exe" /T /F 
rem taskkill /IM "winamp.exe" /T /F
taskkill /IM "Snaz.exe" /T /F 
taskkill /IM "FlyByWire Installer.exe" /T /F 
taskkill /IM "fsltl-trafficinjector.exe" /T /F 
taskkill /IM "rexlandscapes.exe" /T /F 
taskkill /FI "WINDOWTITLE eq w1" /T /F
taskkill /FI "WINDOWTITLE eq w2" /T /F
taskkill /FI "WINDOWTITLE eq w3" /T /F
taskkill /FI "WINDOWTITLE eq FSE SimConnect" /T /F
rem
rem FROM HERE IS DIFFERENT FOR VATSIM OR IVAO
rem
taskkill /IM "antimicro.exe" /T /F 
taskkill /IM "pilot_core_fs2020.exe" /T /F 
taskkill /IM "PilotUI.exe" /T /F 
CLS