# install
flatpak install flathub -y --system com.valvesoftware.Steam

# override launcher to change category (games category only)
mkdir -p ~/.local/share/applications
cp internet/steam/com.valve* ~/.local/share/applications
