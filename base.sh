#!/bin/bash

#install yay
sudo pacman -S git 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#install terminal among other basic apps
sudo pacman -S alacritty krita obs-studio neovim wireshark-qt
sudo pacman -S keepassxc
# Fonts
sudo pacman -S ttf-fira-code noto-fonts-cjk # for alacritty toml
sudo pacman -S fastfetch flatpak
sudo pacman -S libreoffice texlive #Latex and Libreoffice add the extension

yay -S librewolf-bin visual-studio-code-bin
yay -S vmware-workstation

#Bluetooth
sudo pacman -S bluez bluez-utils



#GAMES 
sudo pacman -S nvidia nvidia-settings nvidia-utils 
yay -S envycontrol 
sudo envycontrol -s hybrid

sudo pacman -S lutris wine 
sudo pacman -S winetricks 
 

#Flatpak
VLC
Prism Launcher
Discord
Handbrake
Curtail
IsoWriter
KiCad
Steam
Metadata Remover
Logisim 

#DOOM emacs
sudo pacman -S emacs ripgrep git
rm -rf /home/$USER/.emacs.d/
git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d
cd ~/.emacs.d
./bin/doom install
./bin/doom doctor

#Config files
DWM Rice : https://github.com/ClemTheAlien/ClemTheAliens-DWM-Rice

Alacritty Rice: https://github.com/ClemTheAlien/Clems-Alacritty-Ric
	git clone https://github.com/ClemTheAlien/Clems-Alacritty-Rice .config/alacritty

DOOM EMACS Rice: https://github.com/ClemTheAlien/ClemDoomEmacsConfig
        git clone https://github.com/ClemTheAlien/ClemDoomEmacsConfig ~/.config/doom

