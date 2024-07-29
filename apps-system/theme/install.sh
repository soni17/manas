# install icon-themes
sudo apt install -y ./apps-system/theme/icon-themes/humanity-icon-theme_0.6.16_all.deb
sudo apt install -y ./apps-system/theme/icon-themes/ubuntu-mono_14.04_all.deb

# install crosextra fonts
sudo apt install -y \
  fonts-crosextra-caladea \
  fonts-crosextra-carlito

# install ubuntu fonts
sudo apt install -y ./apps-system/theme/fonts/ttf-ubuntu-font-family_0.80-0ubuntu6_all.deb

# install microsoft fonts
sudo apt install -y ttf-mscorefonts-installer
sudo bash apps-system/theme/fonts/ttf-vista-fonts-installer.sh
sudo bash apps-system/theme/fonts/ttf-ms-tahoma-installer.sh

# wallpapers
sudo rm -r /usr/share/backgrounds/*
sudo cp apps-system/theme/wallpapers/* /usr/share/backgrounds
sudo rm -r /usr/share/mate-background-properties/*
sudo cp apps-system/theme/settings/backgrounds.xml /usr/share/mate-background-properties
dconf write /org/mate/desktop/background/picture-filename "'/usr/share/backgrounds/beach-rocks.jpg'"

# desktop icons
cp apps-system/theme/desktop-icons/* ~/Desktop

# modify panel menus
rm -r ~/.config/menus
mkdir -p ~/.config/menus
cp apps-system/theme/settings/mate-applications.menu ~/.config/menus

# modify panel apps
rm -r ~/.local/share/applications
mkdir -p ~/.local/share/applications
cp -r apps-system/theme/panel-apps/* ~/.local/share/applications

# load theme settings
dconf load / < apps-system/theme/settings/theme-settings

# theme file
sudo mkdir -p /usr/share/themes/Manas
sudo cp apps-system/theme/settings/index.theme /usr/share/themes/Manas

# set screen temperature
sudo apt install -y redshift
mkdir -p ~/.config/autostart
cp apps-system/theme/settings/redshift.desktop ~/.config/autostart

# disable recent documents in menu
rm ~/.local/share/recently-used*
mkdir -p ~/.local/share/recently-used.xbel

# minimize splash screen at boot
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=3/" /etc/default/grub
sudo sed -i "s/splash/unsplash loglevel=3/" /etc/default/grub
sudo update-grub
