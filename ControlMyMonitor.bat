@echo off

REM Step 1: Download ControlMyMonitor from NirSoft
REM (Assuming you already have the ControlMyMonitor.zip downloaded)

REM Step 2: Create a folder named 'ControlMyMonitor' in 'C:\Program Files'
mkdir "C:\Program Files\ControlMyMonitor"

REM Step 3: Extract the 'ControlMyMonitor' zip to this folder
REM (Assuming the zip file is named 'ControlMyMonitor.zip' and located in the current directory)
powershell Expand-Archive -Path .\ControlMyMonitor.zip -DestinationPath "C:\Program Files\ControlMyMonitor"

REM Step 4: Add attached ico files to this folder
REM (Assuming you have the .ico files in the current directory)
copy *.ico "C:\Program Files\ControlMyMonitor"

REM Step 5: Open ControlMyMonitor.exe
start "" "C:\Program Files\ControlMyMonitor\ControlMyMonitor.exe"

REM Create HDMI.bat batch file
echo @echo off > "C:\Program Files\ControlMyMonitor\HDMI.bat"
echo ControlMyMonitor.exe /SetValue \\.\DISPLAY3\Monitor0 60 17 >> "C:\Program Files\ControlMyMonitor\HDMI.bat"
echo exit >> "C:\Program Files\ControlMyMonitor\HDMI.bat"

REM Create DP.bat batch file
echo @echo off > "C:\Program Files\ControlMyMonitor\DP.bat"
echo ControlMyMonitor.exe /SetValue \\.\DISPLAY3\Monitor0 60 19 >> "C:\Program Files\ControlMyMonitor\DP.bat"
echo exit >> "C:\Program Files\ControlMyMonitor\DP.bat"
