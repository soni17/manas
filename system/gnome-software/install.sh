# https://apps.gnome.org/Software

# install
sudo apt-get install -y \
  gnome-software \
  gnome-software-plugin-flatpak

# disable auto update because package-updater handles it
dconf write /org/gnome/software/download-updates false
dconf write /org/gnome/software/download-updates-notify false 

# add launcher icon
mkdir -p ~/.local/share/applications
cp system/gnome-software/org.gnome.Software* ~/.local/share/applications
