# tbn
## all you have to do to set up is run RUNME.ps1 this will install and configure everything you will need

### To set images as icons
1. download an image from google (or the like) **to your downloads folder** (Example file name: Download.png)
2. **right click > Edit with Paint 3D > Canvas** Uncheck 'Lock aspect ratio' and check 'resize image with canvas' then change both boxes to 100px
3. Open powershell and type `./SetAsIcon (Filename FILE EXTENTION REQUIRED HERE) (choose a name for the icon NO FILE EXTENSION HERE)`

### To view your saved icons
1. Open powershell and type `./ListIcons`

### To send a notification
1. Open powershell and type `./Notify (Icon name NO FILE EXTENSION) "(Notification title)" "(notification body)"


#### Example setup

`./SetAsIcon Download.png info`

`./Notify info "Example" "This is an example"`
