# https://podman-desktop.io
# https://github.com/containers/podman-desktop

# install podman
sudo apt-get install -y podman

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/podman-desktop/podman-desktop/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="podman-desktop-${LATEST_VERSION:1}.flatpak"

# download installer
wget -q https://github.com/podman-desktop/podman-desktop/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# install
sudo flatpak install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# add config file
mkdir -p ~/.local/share/containers/podman-desktop/configuration
cp development/podman-desktop/settings.json ~/.local/share/containers/podman-desktop/configuration
