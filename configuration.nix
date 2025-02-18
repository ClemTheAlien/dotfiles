# ClemTheAlien's NixOS

{ config, pkgs, lib, ... }:

{
	imports =
	[ # Include the results of the hardware scan.
		./hardware-configuration.nix
	];
	#Update Kernel (fix audio)
	boot.kernelPackages = pkgs.linuxPackages_latest;
 	# Bootloader.
	boot.loader.systemd-boot.enable =true;
	# Hostname
	networking.hostName = "CHANGE ME";
	# Enable networking
	networking.networkmanager.enable = true;
  	#Timezone
	time.timeZone = "CHANGE ME";
	# Select internationalisation properties.
	i18n.defaultLocale = "en_US.UTF-8";
	i18n.extraLocaleSettings = {
		LC_ADDRESS = "en_US.UTF-8";
		LC_IDENTIFICATION = "en_US.UTF-8";
		LC_MEASUREMENT = "en_US.UTF-8";
		LC_MONETARY = "en_US.UTF-8";
		LC_NAME = "en_US.UTF-8";
		LC_NUMERIC = "en_US.UTF-8";
		LC_PAPER = "en_US.UTF-8";
		LC_TELEPHONE = "en_US.UTF-8";
		LC_TIME = "en_US.UTF-8";
	};
	# Define a user account.
	users.users.clemmie = {
		isNormalUser = true;
		description = "clemmie";
		extraGroups = [ "networkmanager" "wheel" ];
		packages = with pkgs; [];
	};
	#Allow Non-Foss
	nixpkgs.config.allowUnfree = true;	
	# Packages
	environment.systemPackages = with pkgs; [
		# System Tools
		bluez #bluetooth
		bluez-tools #bluetooth
		os-prober #dual boot

		# Desktop Env Tools 
		alacritty #terminal
		rofi #launcher
		fastfetch #fetch
		pcmanfm #file explorer
		picom #compositor
		nitrogen #background handler
		shutter #screenshotter
		pywal #colorscheme generator
		networkmanagerapplet #wifi gui
		blueman #bluetooth gui
		pavucontrol #audio applet
		feh # to view images 
		# Apps
			# General Apps 
		librewolf #browser
		libreoffice #document suite editor
		keepassxc # password manager
		vlc #video 

			# Chat Apps
		vesktop #discord
		weechat #irc

		#Coding Tools
		git # ver control
		vscodium #IDE 
		libgcc #gcc compiler
		android-studio #android tools		
			#Languages
			flutter #cross-platform app dev 


		# CyberSec Tools
		wireshark # packet sniffing

		#Electrical Engineering Tools
		kicad #pcb maker
		logisim-evolution #pcb maker

		# Art Tools
		krita #picture manipulation tool
		obs-studio #video recording software
		handbrake #video compressor
		curtail #image compressor
		metadata-cleaner #cleans metadata
		
	];
	# Sys Ver
	system.stateVersion = "24.11";
	
	# AwesomeWm
	services.xserver.windowManager.awesome.enable= true;
	services.xserver.enable = true;
	services.displayManager = {
		sddm.enable = true;
		defaultSession = "none+awesome";

	};
	# File System Auto USB Mount
	services.gvfs.enable = true;
	services.udisks2.enable = true;
	services.devmon.enable = true;

	
	#Picom
	services.picom.enable = true;
	
	#Fonts
	fonts.packages = with pkgs; [
		noto-fonts
		noto-fonts-cjk-sans
		noto-fonts-emoji
		fira-code
		fira-code-symbols
	];

	#Flatpak
	services.flatpak.enable = true;
		xdg.portal = {
			enable = true;
			extraPortals = with pkgs;[
				xdg-desktop-portal-gtk
		];
	};
	#Audio (PipeWire)
	services.pipewire = {
		enable = true;
		alsa.enable = true;
		alsa.support32Bit = true;
		pulse.enable = true;
		jack.enable = true;
	};
	#Bluetooth 
	services.blueman.enable = true;
	hardware.bluetooth.enable = true; 
	hardware.bluetooth.powerOnBoot = true;
}
