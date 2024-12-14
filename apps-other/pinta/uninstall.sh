if flatpak list | grep com.github.PintaProject.Pinta
then
  flatpak uninstall -y --delete-data com.github.PintaProject.Pinta
fi

# delete launcher icon
rm ~/.local/share/applications/com.github.Pinta*
