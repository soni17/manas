# https://gitlab.gnome.org/GNOME/gnome-screenshot

# install
sudo apt-get install -y gnome-screenshot

# save screenshots in desktop
dir=file://$HOME/Desktop
gsettings set org.gnome.gnome-screenshot last-save-directory "'$dir'"
