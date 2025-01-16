if flatpak list | grep net.nokyan.Resources
then
  flatpak uninstall -y --delete-data net.nokyan.Resources
fi
