# BurntToast toolbox
## all you have to do to set up is run RUNME.ps1 this will install and configure everything you will need
you should get a notification, if you do not hold down shift and right click inside your curent folder and select open powershell window here then type `./RUNME`

### To set images as icons
1. download an image from google (or the like) **to your downloads folder** (Example file name: Download.png)
3. Open powershell and type `./SetAsIcon (Filename FILE EXTENTION REQUIRED HERE) (choose a name for the icon NO FILE EXTENSION HERE)`

### To view your saved icons
1. Open powershell and type `./ListIcons`

### To send a notification
1. Open powershell and type `./Notify (Icon name NO FILE EXTENSION) "(Notification title)" "(notification body)"`


#### Example setup

`./SetAsIcon Download.png info`

`./Notify info "Example" "This is an example"`

this will send a notification that has the info icon the title says Example, and the body says This is an example



#### To use in a script

`C:\Users\$Env:USERNAME\Notify.ps1'
