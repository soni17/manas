if flatpak list | grep org.localsend.localsend_app
then
  flatpak uninstall -y --delete-data org.localsend.localsend_app
fi
