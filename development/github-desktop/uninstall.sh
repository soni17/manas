if flatpak list | grep io.github.shiftey.Desktop
then
  flatpak uninstall -y --delete-data io.github.shiftey.Desktop
fi
