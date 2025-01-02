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
	boot.loader = {
		grub = {
			enable = true;
			useOSProber = true;
			device = "nodev";
			efiSupport = true;
		};
		efi = {
			canTouchEfiVariables = true;
			efiSysMountPoint = "/boot/efi";
		};
	};
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
	# Packages
	environment.systemPackages = with pkgs; [
		alacritty #terminal
		rofi #launcher
		brave #browser
		fastfetch #fetch
		pcmanfm #file explorer
		git # ver control
		krita #picture manipulation tool
		obs-studio #video recording software
		wireshark # packet sniffing 
		keepassxc # password manager
		libreoffice #document suite editor
		bluez #bluetooth
		bluez-tools #bluetooth
		vlc #video 
		prismlauncher #minecraft
		vesktop #discord
		handbrake #video compressor
		curtail #image compressor
		kicad #pcb maker
		metadata-cleaner #cleans metadata
		logisim #pcb maker
		picom #compositor
		nitrogen #background handler
		shutter #screenshotter
		pywal #colorscheme generator
		networkmanagerapplet #wifi gui
		blueman #bluetooth gui
		os-prober #dual boot
		pavucontrol #audio applet
		emacs #for coding, org mode, etc...
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
