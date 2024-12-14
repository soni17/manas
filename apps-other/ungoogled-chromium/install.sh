# https://github.com/ungoogled-software/ungoogled-chromium

# install ungoogled-chromium
flatpak install flathub -y --system io.github.ungoogled_software.ungoogled_chromium

# desktop icon that fixes slow startup
cp apps-other/ungoogled-chromium/io.github.ungoogled_software.ungoogled_chromium.desktop ~/.local/share/applications
