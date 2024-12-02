#!/bin/bash

#install yay
sudo pacman -S git 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

#install terminal among other basic apps
sudo pacman -S krita obs-studio neovim wireshark-qt keepassxc fastfetch
# Fonts
sudo pacman -S ttf-fira-code noto-fonts-cjk 
yay -S ttf-ms-win11-auto # times new roman for essays, cjk for Mandarin Chinese Japanese and Korean fonts, and fira code for rice

sudo pacman -S flatpak #flatpak

sudo pacman -S libreoffice texlive #Latex and Libreoffice add the extension

yay -S librewolf-bin #browser

#Bluetooth
sudo pacman -S bluez bluez-utils

#Nvidia 
sudo pacman -S nvidia nvidia-settings nvidia-utils 
yay -S envycontrol 
sudo envycontrol -s hybrid

#Steam


#Flatpak
flatpak install flathub org.videolan.VLC #VLC
flatpak install flathub org.prismlauncher.PrismLauncher #Prism Launcher
flatpak install flathub com.lunarclient.LunarClient #Lunar Client
flatpak install flathub fr.handbrake.ghb #Handbrake
flatpak install flathub com.github.huluti.Curtail #Curtail
flatpak install flathub org.kicad.KiCad #KiCAD
flatpak install flathub fr.romainvigier.MetadataCleaner #Metadata Remover
flatpak install flathub com.github.reds.LogisimEvolution #Logisim
flatpak install flathub dev.vencord.Vesktop #Discord Client
