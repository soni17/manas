# remove user from docker group
sudo usermod -rG docker $USER

# uninstall
sudo apt-get purge -y --autoremove \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin

# remove repository
sudo rm -f /etc/apt/sources.list.d/docker.list
sudo rm -f /etc/apt/keyrings/docker.asc
