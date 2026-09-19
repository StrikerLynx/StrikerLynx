# PowerShell Config
$env:XDG_CONFIG_HOME = "$HOME\.config"
$env:MPV_HOME = "$HOME\.config\mpv"
$env:DOTNET_CLI_TELEMETRY_OPTOUT =  "1"

# Aliases
$dwn = "$env:USERPROFILE\Downloads"
$dt = "$env:USERPROFILE\Desktop"
$doc = "$env:USERPROFILE\Documents"
$tools = "D:\Tools"

# Program Aliases
Set-Alias np "C:\Program Files\Notepad++\notepad++.exe"
Set-Alias ed edit
Set-Alias make mingw32-make
Set-Alias note notepad
Set-Alias vi vim

# Program Functions
function Edge_Run {Start-Process msedge}
function qqq {exit}
