if flatpak list | grep com.github.PintaProject.Pinta
then
  flatpak uninstall -y --delete-data com.github.PintaProject.Pinta
fi
