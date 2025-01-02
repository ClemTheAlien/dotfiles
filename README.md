# Welcome to ClemTheAlien's NixOS Dotfiles for Desktop Usage!
These dotfiles require an exact or similar layout of my configuration.nix file in order to function. These dots should be applicable across most distros if you download the applications listed in my configuration.nix file while also copying the folders to the .config folder. Warning that these dots were made with NixOSin mind.
## Additional Warnings
- I use Grub for my Bootloader (cry about it)
- I make sure my Kernel is the most bleeding edge to fix my devices audio issues (it is not nessecary to use bleeding-edge kernel for my dots to work)
- I omitted my Timezone and Hostname in the config so make sure to edit that

If you are curious on why every component is needed read my configuration.nix file and it should explain everything. Before you remove anything consult every file to see if there is any stragglers.

Pywal is connected to the .bashrc, rofi, awesome, alacritty files and applications
Picom is connected to the alacritty.toml file
Fasfetch is connected to the .bashrc file
Nitrogen is connected to awesome and .bashrc files and folder (yes i went overkill making sure my wallpaper always appeared)

## Flatpak
I also download some apps using flatpak such as:
- Spotify
- Bottles
Keep that in mind but downloading these are not necessary

Most of these notes are for future maintenece on my part :>
I do not know how to use flakes yet so dont judge me.