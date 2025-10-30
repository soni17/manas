# install icon-themes
sudo apt-get install -y ./system/theme/icon-themes/humanity-icon-theme_0.6.16_all.deb
sudo apt-get install -y ./system/theme/icon-themes/ubuntu-mono_14.04_all.deb

# install fonts
sudo apt-get install -y \
  fonts-crosextra-caladea \
  fonts-crosextra-carlito \
  fonts-ubuntu \
  ttf-mscorefonts-installer

# install more microsoft fonts
sudo bash system/theme/fonts/ttf-vista-fonts-installer.sh
sudo bash system/theme/fonts/ttf-ms-tahoma-installer.sh

# copy wallpapers
sudo rm -rf /usr/share/backgrounds/*
sudo cp system/theme/wallpapers/* /usr/share/backgrounds

# copy wallpaper settings
sudo rm -rf /usr/share/mate-background-properties/*
sudo rm -rf ~/.config/mate/backgrounds.xml
sudo cp system/theme/settings/backgrounds.xml /usr/share/mate-background-properties

# copy fluent theme
mkdir /tmp/fluent-theme
tar -xf system/theme/settings/Fluent.tar.xz -C /tmp/fluent-theme
sudo cp -r /tmp/fluent-theme/* /usr/share/themes

# copy pluma theme
sudo cp system/theme/settings/coldark-dark.xml /usr/share/gtksourceview-4/styles

# load metacity theme
sudo cp system/theme/settings/metacity-theme-1.xml /usr/share/themes/TraditionalOk/metacity-1

# load theme settings
dconf load / < system/theme/settings/theme-settings

# add theme file
sudo mkdir -p /usr/share/themes/Manas
sudo cp system/theme/settings/index.theme /usr/share/themes/Manas
