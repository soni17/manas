# install icon-themes
sudo apt-get install -y ./apps-system/theme/icon-themes/humanity-icon-theme_0.6.16_all.deb
sudo apt-get install -y ./apps-system/theme/icon-themes/ubuntu-mono_14.04_all.deb

# install crosextra fonts
sudo apt-get install -y \
  fonts-crosextra-caladea \
  fonts-crosextra-carlito

# install ubuntu fonts
sudo apt-get install -y ./apps-system/theme/fonts/ttf-ubuntu-font-family_0.80-0ubuntu6_all.deb

# install microsoft fonts
sudo apt-get install -y ttf-mscorefonts-installer
sudo bash apps-system/theme/fonts/ttf-vista-fonts-installer.sh
sudo bash apps-system/theme/fonts/ttf-ms-tahoma-installer.sh

# copy wallpapers
sudo rm -rf /usr/share/backgrounds/*
sudo cp apps-system/theme/wallpapers/* /usr/share/backgrounds
sudo rm -rf /usr/share/mate-background-properties/*
sudo cp apps-system/theme/settings/backgrounds.xml /usr/share/mate-background-properties

# copy desktop icons
cp apps-system/theme/desktop-icons/* ~/Desktop

# modify panel menus
rm -rf ~/.config/menus
mkdir -p ~/.config/menus
cp apps-system/theme/settings/mate-applications.menu ~/.config/menus

# panel app launchers overrides
mkdir -p ~/.local/share/applications
cp apps-system/theme/settings/mate-terminal* ~/.local/share/applications
cp apps-system/theme/settings/engrampa* ~/.local/share/applications

# load theme settings
dconf load / < apps-system/theme/settings/theme-settings

# add theme file
sudo mkdir -p /usr/share/themes/Manas
sudo cp apps-system/theme/settings/index.theme /usr/share/themes/Manas

# set screen temperature
sudo apt-get install -y redshift
mkdir -p ~/.config/autostart
cp apps-system/theme/settings/redshift.desktop ~/.config/autostart

# disable recent documents history
if ! lsattr ~/.local/share/recently-used.xbel | grep i
then
  echo -n > ~/.local/share/recently-used.xbel
  sudo chattr +i ~/.local/share/recently-used.xbel
fi

# minimize splash screen at boot
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=3/" /etc/default/grub
sudo sed -i "s/splash/unsplash loglevel=3/" /etc/default/grub
sudo update-grub
