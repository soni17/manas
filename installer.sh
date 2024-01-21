# update and upgrade
sudo apt update && 
sudo apt full-upgrade &&  
sudo apt dist-upgrade && 
sudo apt autoremove -y

# uninstall unused packages
sudo apt purge gnome-keyring fonts-noto seahorse firefox-esr* gimp* goldendict mlterm mlterm-tiny xterm xiterm+thai libreoffice* mysql-common orca

# install packages from Debian repo
sudo apt install -y git adb wget curl flatpak gnome-screenshot gnome-software gnome-software-plugin-flatpak cmatrix gtkhash vlc gnome-clocks rhythmbox shotcut chromium webcamoid timeshift gnome-disk-utility gnome-package-updater package-update-indicator caja-admin caja-image-converter caja-open-terminal caja-rename gdebi mozo gufw redshift blueman htop btop ncdu gucharmap dconf-cli ayatana-indicator-application ayatana-indicator-common ayatana-indicator-messages ayatana-indicator-notifications ayatana-indicator-power ayatana-indicator-printers ayatana-indicator-sound mate-indicator-applet mate-indicator-applet-common libreoffice-writer libreoffice-gtk3 lsb-release mate-dock-applet neofetch lshw tldr bat transmission 

# configue flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# install flatpak apps
flatpak install flathub org.gnome.SimpleScan -y
flatpak install flathub io.podman_desktop.PodmanDesktop -y
flatpak install flathub com.jgraph.drawio.desktop -y

# install packages from files
sudo apt install ./packages/pinta_1.6-2.1_all.deb
sudo apt install ./packages/dbgate-latest.deb