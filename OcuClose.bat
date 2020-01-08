@ECHO OFF

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
taskkill /IM "OVRServiceLauncher.exe" /F
taskkill /IM "OVRServer_x64.exe" /F
taskkill /IM "OVRRedir.exe" /F