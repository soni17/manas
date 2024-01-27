# update and upgrade
sudo apt update -y
sudo apt full-upgrade -y  
sudo apt dist-upgrade -y
sudo apt autoremove -y

# uninstall unused packages
sudo apt purge gnome-keyring fonts-noto seahorse firefox-esr* gimp* goldendict mlterm mlterm-tiny xterm xiterm+thai libreoffice* mysql-common orca mate-applet-brisk-menu mate-applets mate-utils -y

# install packages from Debian repo
sudo apt install git adb wget curl flatpak gnome-screenshot gnome-software gnome-software-plugin-flatpak cmatrix gtkhash vlc gnome-clocks rhythmbox shotcut chromium webcamoid timeshift gnome-disk-utility gnome-package-updater package-update-indicator caja-admin caja-image-converter caja-open-terminal caja-rename gdebi mozo gufw redshift blueman htop btop ncdu gucharmap dconf-cli ayatana-indicator-application ayatana-indicator-common ayatana-indicator-messages ayatana-indicator-notifications ayatana-indicator-power ayatana-indicator-printers ayatana-indicator-sound mate-indicator-applet mate-indicator-applet-common libreoffice-writer libreoffice-gtk3 lsb-release mate-dock-applet neofetch lshw tldr bat transmission -y

# configue flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# install flatpak apps
flatpak install flathub org.gnome.SimpleScan -y
flatpak install flathub io.podman_desktop.PodmanDesktop -y
flatpak install flathub com.jgraph.drawio.desktop -y

# install packages from files
sudo apt install ./packages/pinta_1.6-2.1_all.deb -y
sudo apt install ./packages/dbgate-latest.deb -y
sudo apt install ./packages/humanity-icon-theme_0.6.10_all.deb -y 
sudo apt install ./packages/ubuntu-mate-icon-themes_16.04.6_all.deb -y
sudo apt install ./packages/ubuntu-mate-themes_16.04.6_all.deb -y
sudo apt install ./packages/ubuntu-mono_14.04+16.04.20160415-0ubuntu1_all.deb -y

# copy wallpapers
cp wallpapers/beach-rocks.jpg ~/Pictures
cp wallpapers/os-x-yosemite.jpg ~/Pictures
cp wallpapers/sunset.jpg ~/Pictures
cp wallpapers/mountains.jpg ~/Pictures
cp wallpapers/dessert.jpg ~/Pictures
cp wallpapers/retro80s.jpg ~/Pictures

# -----settings-------

# enable firewall
sudo ufw enable

# reduce timeout to 3 seconds during boot
# minimize splash screen at boot to show fewer logs
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=3/" /etc/default/grub
sudo sed -i "s/splash/unsplash loglevel=3/" /etc/default/grub
sudo update-grub

# fix for network-monitor applet not showing in panel
sudo sed -i "s/Exec=nm-applet/Exec=nm-applet --indicator/" /etc/xdg/autostart/nm-applet.desktop

# add terminal settings
dconf write /org/mate/terminal/profiles/default/background-color "'#000000000000'"
dconf write /org/mate/terminal/profiles/default/foreground-color "'#FFFFFFFFFFFF'"
dconf write /org/mate/terminal/profiles/default/background-type "'transparent'"
dconf write /org/mate/terminal/profiles/default/background-darkness 0.86
dconf write /org/mate/terminal/profiles/default/cursor-shape "'underline'"
dconf write /org/mate/terminal/profiles/default/cursor-blink-mode "'off'"
dconf write /org/mate/terminal/profiles/default/palette  "'#000000000000:#CCCC00000000:#4E4D9A9A0605:#C4C3A0A00000:#34346564A4A3:#7575504F7B7B:#060598979A9A:#D3D3D7D6CFCF:#555457565352:#EFEF29282928:#8A89E2E23434:#FCFBE9E84F4F:#72729F9ECFCF:#ADAC7F7EA8A8:#3434E2E2E2E2:#EEEDEEEDECEB'"
dconf write /org/mate/terminal/profiles/default/use-theme-colors false
dconf write /org/mate/terminal/profiles/default/allow-bold false
dconf write /org/mate/terminal/profiles/default/scrollback-unlimited true
dconf write /org/mate/terminal/profiles/default/use-system-font true

# add theme packages and settings
dconf write /org/mate/desktop/interface/gtk-theme "'TraditionalOk'"
dconf write /org/mate/marco/general/theme "'TraditionalOk'"
dconf write /org/mate/desktop/interface/icon-theme "'ubuntu-mono-light'"
hme=~
dconf write /org/mate/desktop/background/picture-filename "'$hme/Pictures/beach-rocks.jpg'"

dconf write /org/mate/marco/general/compositing-manager true
dconf write /org/mate/caja/preferences/always-use-location-entry true
dconf write /org/mate/pluma/display-right-margin false

dconf write /org/mate/screensaver/mode "'blank-only'"
dconf write /org/mate/screensaver/themes "@as []"

dconf write /org/mate/notification-daemon/theme "'slider'"
dconf write /org/mate/notification-daemon/popup-location "'bottom_right'"