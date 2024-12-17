if flatpak list | grep org.tenacityaudio.Tenacity
then
  flatpak uninstall -y --delete-data org.tenacityaudio.Tenacity
fi
