if flatpak list | grep br.eng.silas.qpdftools
then
  flatpak uninstall -y --delete-data br.eng.silas.qpdftools
fi
