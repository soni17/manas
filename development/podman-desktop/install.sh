# https://podman-desktop.io
# https://github.com/containers/podman-desktop

# install podman
sudo apt-get install -y podman

# install
flatpak install flathub -y --system io.podman_desktop.PodmanDesktop

# add config file
mkdir -p ~/.local/share/containers/podman-desktop/configuration
cp development/podman-desktop/settings.json ~/.local/share/containers/podman-desktop/configuration
