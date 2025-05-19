if flatpak list | grep com.github.PintaProject.Pinta
then
  flatpak uninstall -y --delete-data com.github.PintaProject.Pinta
fi

# delete config folder
sudo rm -rf ~/.config/Pinta

# delete launcher icon
rm ~/.local/share/applications/com.github.Pinta*
