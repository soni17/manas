sudo usermod -rG docker $USER

sudo apt purge -y --autoremove \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin

sudo rm /etc/apt/sources.list.d/docker.list

sudo rm /etc/apt/keyrings/docker.asc
