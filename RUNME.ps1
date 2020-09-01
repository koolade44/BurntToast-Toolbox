$bte = Test-Path -Path "C:\Program Files\WindowsPowerShell\Modules\BurntToast"
if ($bte = $True) {
	New-BurntToastNotification -Text 'BurntToast is installed', "BurntToast is installed on your computer"
}
else {
	Start-Process powershell -verb runAs "Install-Module -Name BurntToast"
	New-BurntToastNotification -Text 'BurntToast Installed', "BurntToast has been installed on your computer"
}
New-Item -Path "C:\Users\$Env:USERNAME" -Name "Icons" -ItemType "Directory"
Move-Item -Path ".\cmdscr\*.ps1" -Destination "C:\Users\$Env:USERNAME"
Move-Item -Path ".\cmdscr\check.png" -Destination "C:\Users\$Env:USERNAME\Icons"
Remove-Item -Path ".\cmdscr" -Recurse
