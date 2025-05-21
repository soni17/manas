# uninstall
flatpak uninstall -y --delete-data com.github.PintaProject.Pinta

# delete config folder
sudo rm -rf ~/.config/Pinta

# delete launcher icon
rm ~/.local/share/applications/com.github.Pinta*
