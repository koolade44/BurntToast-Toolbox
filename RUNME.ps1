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
Remove-Item -Path ".\cmdscr" -Recurse

./DownloadAsIcon "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.rsrit.com%2Fwp-content%2Fuploads%2F2017%2F12%2Fcheck-1-icon.png&imgrefurl=https%3A%2F%2Fwww.rsrit.com%2Finformation-management%2Fattachment%2Fcheck-1-icon%2F&tbnid=IqvulzH9fZWBVM&vet=12ahUKEwjlxYDh-cbrAhWbAJ0JHeKLBHMQMygIegUIARDfAQ..i&docid=ihvVOrcR4PgJyM&w=256&h=256&q=icon&hl=en&ved=2ahUKEwjlxYDh-cbrAhWbAJ0JHeKLBHMQMygIegUIARDfAQ" check
