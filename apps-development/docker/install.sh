# https://docs.docker.com/engine/install/debian/

# add Docker's official GPG key
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# add repository
ARCH=$(dpkg --print-architecture)
OS_CODENAME=$(. /etc/os-release && echo $VERSION_CODENAME)
REPO="deb [arch=$ARCH signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $OS_CODENAME stable"
echo $REPO | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# install docker and extensions
sudo apt update -y
sudo apt install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin

# run docker command without sudo (by adding user to docker group)
sudo usermod -aG docker $USER
