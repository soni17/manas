# https://github.com/containers/podman-desktop

# install podman
sudo apt install -y podman

# install podman desktop
flatpak install flathub --assumeyes --system io.podman_desktop.PodmanDesktop

# config file
mkdir -p ~/.local/share/containers/podman-desktop/configuration
cp apps-development/podman-desktop/settings.json ~/.local/share/containers/podman-desktop/configuration
