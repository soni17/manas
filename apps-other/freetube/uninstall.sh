if flatpak list | grep io.freetubeapp.FreeTube
then
  flatpak uninstall -y --delete-data io.freetubeapp.FreeTube
fi
