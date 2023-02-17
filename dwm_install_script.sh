#!/bin/sh

sudo dnf install git make gcc libXft-devel libX11-devel libXinerama-devel
mkdir ~/.suckless
cd ~/.suckless
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
cd dwm
make
sudo make clean install
cd ../st
make
sudo make clean install
cd ../dmenu
make
sudo make clean install
cd
touch dwm.desktop
echo "Creating DWM session"
echo "[Desktop Entry]
Encoding=UTF-8
Name=DWM
Exec=dwm-setup
Icon=dwm
type=XSession" >> dwm.desktop
sudo mv dwm.desktop /usr/share/xsessions/dwm.desktop
echo "Creating dwm-setup config"
echo "exec dwm" >> dwm-setup
sudo mv dwm-setup /usr/local/bin/dwm-setup
chmod +x /usr/local/bin/dwm-setup
echo "Install now complete. You can now logout and change your DE/WM" 
