# install icon-themes
sudo apt-get install -y ./system/theme/icon-themes/humanity-icon-theme_0.6.16_all.deb
sudo apt-get install -y ./system/theme/icon-themes/ubuntu-mono_14.04_all.deb

# install crosextra fonts
sudo apt-get install -y \
  fonts-crosextra-caladea \
  fonts-crosextra-carlito

# install ubuntu fonts
sudo apt-get install -y ./system/theme/fonts/ttf-ubuntu-font-family_0.80-0ubuntu6_all.deb

# install microsoft fonts
sudo apt-get install -y ttf-mscorefonts-installer
sudo bash system/theme/fonts/ttf-vista-fonts-installer.sh
sudo bash system/theme/fonts/ttf-ms-tahoma-installer.sh

# copy wallpapers
sudo rm -rf /usr/share/backgrounds/*
sudo cp system/theme/wallpapers/* /usr/share/backgrounds

# copy wallpaper settings
sudo rm -rf /usr/share/mate-background-properties/*
sudo rm -rf ~/.config/mate/backgrounds.xml
sudo cp system/theme/settings/backgrounds.xml /usr/share/mate-background-properties

# copy desktop icons
cp system/theme/desktop-icons/* ~/Desktop

# modify panel menus
rm -rf ~/.config/menus
mkdir -p ~/.config/menus
cp system/theme/settings/mate-applications.menu ~/.config/menus

# panel app launchers overrides
mkdir -p ~/.local/share/applications
cp system/theme/settings/mate-terminal* ~/.local/share/applications
cp system/theme/settings/engrampa* ~/.local/share/applications

# panel menu editor
sudo apt-get install -y mozo

# load theme settings
dconf load / < system/theme/settings/theme-settings

# add theme file
sudo mkdir -p /usr/share/themes/Manas
sudo cp system/theme/settings/index.theme /usr/share/themes/Manas

# disable recent documents history
if ! lsattr ~/.local/share/recently-used.xbel | grep i
then
  echo -n > ~/.local/share/recently-used.xbel
  sudo chattr +i ~/.local/share/recently-used.xbel
fi
