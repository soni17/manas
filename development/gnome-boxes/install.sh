# https://apps.gnome.org/Boxes
# https://github.com/GNOME/gnome-boxes

# install
sudo apt-get install -y gnome-boxes

# override launcher
mkdir -p ~/.local/share/applications
cp development/gnome-boxes/org.gnome.Boxes* ~/.local/share/applications
