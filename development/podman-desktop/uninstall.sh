if flatpak list | grep io.podman_desktop.PodmanDesktop
then
  flatpak uninstall -y --delete-data io.podman_desktop.PodmanDesktop
fi
