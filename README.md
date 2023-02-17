# Dabide's DWM Installer
note: this script is intended for Fedora or Fedora-based distros
https://github.com/DabideBoi/dwm-installer/
## Are you tired of installing DWM on different machines that you own?
Well if your answer is YES. Then we felt the same excruciating pain of installing it over and over again. 

## How to execute the script
Clone this repository
```
git clone https://github.com/DabideBoi/dwm-installer/
```

cd into the folder

```
cd dwm-installer
```

Make the script executable
```
chmod +x dwm_install_script.sh
```

Then run the script
```
./dwm_install_script.sh
```

and DWM (along with dmenu and st) will be installed to your system.

## How am I going to start DWM
You can after you ran the script, you can now logout of your existing sessions (whether it be gnome, kde, or XFCE [I prefer the XFCE spin as my base install]) and change your DE/WM option to DWM. Login and voila you have a working DWM setup.

## xinitrc is not working. How am I going to launch commands at the start of my program
I did a fix for this making the dwm.desktop file execute /usr/local/bin/dwm-setup. The dwm-setup command will act as your xinitrc (if you are familiar with how to setup DWM in arch then you will know).

Here is what my dwm-setup contains (if you need an example)
```
~/.fehbg &
dwmbar &
nm-applet &
exec dwm
```

## If you have issues using this script, please post an issue so I can fix it. Hope you all have a wonderful day
