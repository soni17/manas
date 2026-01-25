# https://apps.gnome.org/en/DiskUtility

# install
sudo apt-get install -y gnome-disk-utility

# override launcher
mkdir -p ~/.local/share/applications
cp system/gnome-disk-utility/org.gnome.Disk* ~/.local/share/applications
