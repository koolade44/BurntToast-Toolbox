$logo = $args[0] + ".png"
$title = $args[1]
$body = $args[2]
New-BurntToastNotification -AppLogo "C:\Users\$Env:USERNAME\Icons\$logo" -Text "$title", "$body"