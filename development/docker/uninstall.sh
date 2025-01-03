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
sudo extrepo disable docker-ce
sudo apt-get update -y
