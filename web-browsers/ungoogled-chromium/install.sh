# https://github.com/ungoogled-software/ungoogled-chromium

# install
flatpak install flathub -y --system io.github.ungoogled_software.ungoogled_chromium

# launcher icon that fixes slow startup
mkdir -p ~/.local/share/applications
cp web-browsers/ungoogled-chromium/io.github.ungoogled_software.ungoogled_chromium.desktop ~/.local/share/applications
