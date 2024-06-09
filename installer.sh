# update and upgrade
sudo apt update -y
sudo apt full-upgrade -y  
sudo apt dist-upgrade -y
sudo apt autoremove -y

# run uninstaller
bash uninstallers/uninstall-bloat.sh

# dependencies for installers
sudo apt install -y \
  git \
  wget \
  curl \
  dconf-cli

# run installers
for script in ./installers/*.sh; do source $script; done

# install packages from Debian repo
sudo apt install -y adb gnome-screenshot cmatrix gtkhash vlc gnome-clocks rhythmbox shotcut webcamoid timeshift gnome-disk-utility gnome-package-updater package-update-indicator caja-admin caja-image-converter caja-open-terminal caja-rename gdebi mozo redshift blueman htop btop ncdu gucharmap ayatana-indicator-application ayatana-indicator-common ayatana-indicator-messages ayatana-indicator-notifications ayatana-indicator-power ayatana-indicator-printers ayatana-indicator-sound mate-indicator-applet mate-indicator-applet-common lsb-release mate-dock-applet neofetch lshw tldr bat transmission fontforge cabextract fonts-crosextra-caladea fonts-crosextra-carlito

# install packages from files
sudo apt install -y ./packages/pinta_1.6-2.1_all.deb
sudo apt install -y ./packages/dbgate-latest.deb
sudo apt install -y ./packages/humanity-icon-theme_0.6.10_all.deb
sudo apt install -y ./packages/ubuntu-mate-icon-themes_16.04.6_all.deb
sudo apt install -y ./packages/ubuntu-mate-themes_16.04.6_all.deb
sudo apt install -y ./packages/ubuntu-mono_14.04+16.04.20160415-0ubuntu1_all.deb
sudo apt install -y ./packages/ttf-ubuntu-font-family_0.80-0ubuntu6_all.deb

# install unpackaged apps
cp -r packages/myapps ~

# install microsoft fonts
sudo apt install -y ttf-mscorefonts-installer
sudo bash settings/ttf-vista-fonts-installer.sh
sudo bash settings/ttf-ms-tahoma-installer.sh


# ----------------------settings-------------------------------

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

# copy wallpapers
cp wallpapers/* ~/Pictures

# add desktop icons
cp desktop/* ~/Desktop

# set theme settings
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
dconf load /org/mate/panel/ < settings/dconf-panel

# set system font settings
dconf write /org/mate/desktop/interface/document-font-name "'Ubuntu 11'"
dconf write /org/mate/desktop/interface/font-name "'Ubuntu 11'"
dconf write /org/mate/caja/desktop/font "'Ubuntu 11'"
dconf write /org/mate/marco/general/titlebar-font "'Ubuntu Medium 11'"
dconf write /org/mate/desktop/interface/monospace-font-name "'Ubuntu Mono 13'"

# set screen temperature
mkdir ~/.config/autostart
cp settings/redshift.desktop ~/.config/autostart

# update and cleanup
sudo apt update -y
sudo apt full-upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# purge residual-config files
dpkg -l | grep '^rc' | awk '{print $2}' | xargs sudo apt-get purge -y
