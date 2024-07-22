# install icon-themes
sudo apt install -y ./packages/humanity-icon-theme_0.6.16_all.deb
sudo apt install -y ./packages/ubuntu-mono_14.04_all.deb

# install crosextra fonts
sudo apt install -y \
  fonts-crosextra-caladea \
  fonts-crosextra-carlito

# install ubuntu fonts
sudo apt install -y ./packages/ttf-ubuntu-font-family_0.80-0ubuntu6_all.deb

# install microsoft fonts
sudo apt install -y ttf-mscorefonts-installer
sudo bash packages/ttf-vista-fonts-installer.sh
sudo bash packages/ttf-ms-tahoma-installer.sh

# load settings
dconf load / < theme/theme-settings

# wallpaper
sudo rm -r /usr/share/backgrounds/*
sudo cp theme/wallpapers/* /usr/share/backgrounds
sudo rm -r /usr/share/mate-background-properties/*
sudo cp theme/backgrounds.xml /usr/share/mate-background-properties
dconf write /org/mate/desktop/background/picture-filename "'/usr/share/backgrounds/beach-rocks.jpg'"

# desktop icons
cp theme/desktop-icons/* ~/Desktop

# theme file
sudo mkdir -p /usr/share/themes/Manas
sudo cp theme/index.theme /usr/share/themes/Manas

# modify panel menus
rm -r ~/.config/menus
mkdir -p ~/.config/menus
cp theme/mate-applications.menu ~/.config/menus

# modify panel apps
rm -r ~/.local/share/applications
mkdir -p ~/.local/share/applications
cp -r theme/panel-apps/* ~/.local/share/applications

# install panel applets
sudo apt install -y \
  ayatana-indicator-application \
  ayatana-indicator-common \
  ayatana-indicator-messages \
  ayatana-indicator-notifications \
  ayatana-indicator-power \
  ayatana-indicator-printers \
  ayatana-indicator-sound \
  mate-indicator-applet \
  mate-indicator-applet-common \
  mate-dock-applet

# fix for network monitor applet
sudo sed -i "s/Exec=nm-applet/Exec=nm-applet --indicator/" /etc/xdg/autostart/nm-applet.desktop

# minimize splash screen at boot
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=3/" /etc/default/grub
sudo sed -i "s/splash/unsplash loglevel=3/" /etc/default/grub
sudo update-grub

# other settings
xdg-mime default gnome-disk-image-mounter.desktop application/x-cd-image

# set screen temperature
sudo apt install -y redshift
mkdir -p ~/.config/autostart
cp theme/redshift.desktop ~/.config/autostart
