if flatpak list | grep com.usebottles.bottles
then
  flatpak uninstall -y --delete-data com.usebottles.bottles
fi
