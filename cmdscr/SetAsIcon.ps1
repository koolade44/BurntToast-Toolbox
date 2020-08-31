$File = $args[0]
$IconName = $args[1] + ".png"
Move-Item -Path "C:\Users\$Env:USERNAME\Downloads\$File" -Destination "C:\Users\$Env:USERNAME\Icons"
Rename-Item -Path "C:\Users\$Env:USERNAME\Icons\$File" -NewName "$IconName"