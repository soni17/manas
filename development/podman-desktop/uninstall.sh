# uninstall
sudo flatpak uninstall -y --delete-data io.podman_desktop.PodmanDesktop

# delete config folder
sudo rm -rf ~/.local/share/containers/podman-desktop/configuration/settings.json
