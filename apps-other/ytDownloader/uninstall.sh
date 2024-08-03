if flatpak list | grep io.github.aandrew_me.ytdn
then
  flatpak uninstall -y --delete-data io.github.aandrew_me.ytdn
fi
