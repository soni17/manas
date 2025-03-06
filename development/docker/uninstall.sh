# remove user from docker group
sudo usermod -rG docker $USER

# uninstall if it's already installed
if apt search docker-ce | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove \
    docker-ce \
    docker-ce-cli \
    containerd.io \
    docker-buildx-plugin \
    docker-compose-plugin
fi

# remove repository
sudo rm -f /etc/apt/sources.list.d/docker.list
sudo rm -f /etc/apt/keyrings/docker.asc
