if flatpak list | grep com.jgraph.drawio.desktop
then
  flatpak uninstall -y --delete-data com.jgraph.drawio.desktop
fi
