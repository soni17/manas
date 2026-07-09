# https://desktop-plus.org/
# https://github.com/desktop-plus/desktop-plus

flatpak install flathub -y --system io.github.pol_rivero.github-desktop-plus

# override launcher to change app name to Github Desktop Plus
mkdir -p ~/.local/share/applications
cp development/github-desktop/io.github.pol* ~/.local/share/applications
