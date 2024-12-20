# https://apps.gnome.org/en/DiskUtility/

# install
sudo apt-get install -y gnome-disk-utility

# launcher icon
mkdir -p ~/.local/share/applications
cp system/gnome-disk-utility/org.gnome.DiskUtility* ~/.local/share/applications
