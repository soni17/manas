sudo apt-get purge -y --autoremove \
  gnome-software \
  gnome-software-plugin-flatpak

# delete launcher icon
rm ~/.local/share/applications/org.gnome.Software*
