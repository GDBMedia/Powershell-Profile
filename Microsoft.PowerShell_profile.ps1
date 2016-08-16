set-location c:/Users/Laker77/Desktop
Import-Module PSReadLine
Import-Module PsGet
Import-Module default-ignores
Import-Module PowerLS
install-Module PsUrl
function which($name) { Get-Command $name | Select-Object Definition }
function rm-rf($item) { Remove-Item $item -Recurse -Force }
function cp-rf($item) { Copy-Item $item -Recurse -Force }
function cp($item) { Copy-Item $item}
function touch($file) { "" | Out-File $file -Encoding ASCII }
$Username = [Environment]::UserName
$Home = Get-Childitem env:HOME
new-item alias:np -value C:\Windows\notepad.exe
new-item alias:** -value ihy
new-item alias:open -value C:\Windows\explorer.exe
new-item alias:ngrok -value C:\Ngrok\ngrok.exe
new-item alias:android -value "C:\Program Files\Android\Android Studio\bin\studio64.exe"
new-item alias:calc -value C:\WINDOWS\system32\calc.exe
new-item alias:nps -value C:\Users\$Username\Desktop\powershell.lnk
$chrome = 'start chrome index.html'
function prompt {
$loc = Get-Location
$test = $loc
$test = $test -replace "$Home"
"~$($test)$ "
}
clear
# Load posh-git example profile
."C:\Users\$Username\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1"
