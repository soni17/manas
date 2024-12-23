if flatpak list | grep com.sejda.Sejda
then
  flatpak uninstall -y --delete-data com.sejda.Sejda
fi
