# https://www.docker.com
# https://docs.docker.com/engine/install/debian

# add repository
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
ARCH=$(dpkg --print-architecture)
DISTRO=$(. /etc/os-release && echo "$VERSION_CODENAME")
echo "deb [arch=$ARCH signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $DISTRO stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
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
