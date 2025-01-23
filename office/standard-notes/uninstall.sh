if flatpak list | grep org.standardnotes.standardnotes
then
  flatpak uninstall -y --delete-data org.standardnotes.standardnotes
fi
