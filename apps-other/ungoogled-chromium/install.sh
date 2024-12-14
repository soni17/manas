# https://github.com/ungoogled-software/ungoogled-chromium

flatpak install flathub -y --system io.github.ungoogled_software.ungoogled_chromium

# launcher icon that fixes slow startup
mkdir ~/.local/share/applications
cp apps-other/ungoogled-chromium/io.github.ungoogled_software.ungoogled_chromium.desktop ~/.local/share/applications
