# https://apps.gnome.org/Software/

sudo apt-get install -y \
  gnome-software \
  gnome-software-plugin-flatpak

# launcher icon
mkdir ~/.local/share/applications
cp apps-system/gnome-software/org.gnome.Software* ~/.local/share/applications
