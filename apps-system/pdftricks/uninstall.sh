if flatpak list | grep com.github.muriloventuroso.pdftricks
then
  flatpak uninstall -y --delete-data com.github.muriloventuroso.pdftricks
fi

# delete launcher icon
rm ~/.local/share/applications/com.github.muriloventuroso.pdftricks*
