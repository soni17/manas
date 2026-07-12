# https://desktop-plus.org/
# https://github.com/desktop-plus/desktop-plus

flatpak install flathub -y --system org.desktop_plus.desktop-plus

# override launcher to fix slow startup
mkdir -p ~/.local/share/applications
cp development/github-desktop/org.desktop_plus* ~/.local/share/applications
