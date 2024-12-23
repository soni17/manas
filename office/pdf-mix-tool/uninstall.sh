if flatpak list | grep eu.scarpetta.PDFMixTool
then
  flatpak uninstall -y --delete-data eu.scarpetta.PDFMixTool
fi
