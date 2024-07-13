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
sudo apt install -y fontforge cabextract # dependencies
sudo apt install -y ttf-mscorefonts-installer
sudo bash packages/ttf-vista-fonts-installer.sh
sudo bash packages/ttf-ms-tahoma-installer.sh
sudo apt purge -y fontforge

# load settings
dconf load / < theme/theme-settings

# wallpaper
cp theme/wallpapers/* ~/Pictures
hme=~
dconf write /org/mate/desktop/background/picture-filename "'$hme/Pictures/beach-rocks.jpg'"

# desktop icons
cp theme/desktop-icons/* ~/Desktop

# theme file
mkdir -p ~/.themes/classic
cp theme/index.theme ~/.themes/classic/index.theme

# modify panel menus
rm -r ~/.config/menus
mkdir -p ~/.config/menus
cp theme/mate-applications.menu ~/.config/menus

# modify panel apps
rm -r ~/.local/share/applications
mkdir -p ~/.local/share/applications
cp -r theme/panel-apps/* ~/.local/share/applications

# other settings
xdg-mime default gnome-disk-image-mounter.desktop application/x-cd-image

# set screen temperature
sudo apt install -y redshift
mkdir -p ~/.config/autostart
cp theme/redshift.desktop ~/.config/autostart
