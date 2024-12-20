if flatpak list | grep io.github.ungoogled_software.ungoogled_chromium
then
  flatpak uninstall -y --delete-data io.github.ungoogled_software.ungoogled_chromium
fi

# delete launcher icon
rm ~/.local/share/applications/io.github.ungoogled_software.ungoogled_chromium.desktop
