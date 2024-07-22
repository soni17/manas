# install podman
sudo apt install -y podman

# install podman desktop
flatpak install flathub --assumeyes --system io.podman_desktop.PodmanDesktop

# config file
mkdir -p ~/.local/share/containers/podman-desktop/configuration
cp configs/podman-desktop.json ~/.local/share/containers/podman-desktop/configuration/settings.json
