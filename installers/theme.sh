# install icon-themes
sudo apt install -y ./packages/humanity-icon-theme_0.6.16_all.deb
sudo apt install -y ./packages/ubuntu-mono_14.04_all.deb

# install fonts
sudo apt install -y \
  fonts-crosextra-caladea \
  fonts-crosextra-carlito \
  fontforge \
  cabextract \
  ttf-mscorefonts-installer
sudo apt install -y ./packages/ttf-ubuntu-font-family_0.80-0ubuntu6_all.deb
sudo bash packages/ttf-vista-fonts-installer.sh
sudo bash packages/ttf-ms-tahoma-installer.sh
sudo apt purge -y fontforge

# load settings
dconf load / < configs/theme-settings

# wallpaper
cp configs/wallpapers/* ~/Pictures
hme=~
dconf write /org/mate/desktop/background/picture-filename "'$hme/Pictures/beach-rocks.jpg'"

# desktop icons
cp configs/desktop-icons/* ~/Desktop

# theme file
mkdir -p ~/.themes/classic
cp configs/index.theme ~/.themes/classic/index.theme

# modify panel menus
if [ -d ~/.config/menus ]; then
  rm -r ~/.config/menus
fi
mkdir -p ~/.config/menus
cp -r configs/panel-menus/* ~/.config/menus

# modify panel apps
if [ -d ~/.local/share/applications ]; then
  rm -r ~/.local/share/applications
fi
mkdir -p ~/.local/share/applications
cp -r configs/panel-apps/* ~/.local/share/applications

# other settings
xdg-mime default gnome-disk-image-mounter.desktop application/x-cd-image

# set screen temperature
sudo apt install -y redshift
mkdir -p ~/.config/autostart
cp configs/redshift.desktop ~/.config/autostart
