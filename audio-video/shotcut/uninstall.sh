if flatpak list | grep org.shotcut.Shotcut
then
  flatpak uninstall -y --delete-data org.shotcut.Shotcut
fi
