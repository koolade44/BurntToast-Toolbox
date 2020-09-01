$ErrorActionPreference = 'silentlycontinue'
$URL = $args[0]
$Name = $args[1] + ".png"
$Site = iwr -Uri $URL
$Images = ($Site).Images.src
foreach ($Image in $Images) {
	Start-BitsTransfer -Source $Image -Destination "C:\Users\Student\Icons\$Name" -TransferType Download
}
New-BurntToastNotification -AppLogo "C:\Users\$Env:USERNAME\Icons\check.png" -Text "Image Downloaded", "Image successfully downloaded"
