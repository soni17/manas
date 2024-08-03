if flatpak list | grep org.gnome.SimpleScan
then
  flatpak uninstall -y --delete-data org.gnome.SimpleScan
fi
