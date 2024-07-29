sudo apt install -y \
  libreoffice-writer \
  libreoffice-gtk3

sudo apt purge -y libreoffice-math

# panel icon
cp apps-other/libreoffice/libreoffice-writer.desktop ~/.local/share/applications
