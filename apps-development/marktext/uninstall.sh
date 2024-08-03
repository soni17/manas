if flatpak list | grep com.github.marktext.marktext
then
  flatpak uninstall -y --delete-data com.github.marktext.marktext
fi
