# https://apps.gnome.org/Boxes
# https://github.com/GNOME/gnome-boxes

# install
sudo apt-get install -y gnome-boxes

# add icon
cp development/gnome-boxes/gnome-boxes.png /usr/share/icons

# override launcher
mkdir -p ~/.local/share/applications
cp development/gnome-boxes/org.gnome.Boxes* ~/.local/share/applications

# stop service from running in background
sudo systemctl disable libvirt-guests.service
