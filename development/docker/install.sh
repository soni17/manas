# https://docs.docker.com/engine/install/debian/

# add repository
sudo extrepo enable docker-ce
sudo apt-get update -y

# install docker and extensions
sudo apt-get install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin

# run docker command without sudo (by adding user to docker group)
sudo usermod -aG docker $USER
