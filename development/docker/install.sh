# https://www.docker.com
# https://docs.docker.com/engine/install/debian

# Add Docker's official GPG key
sudo apt-get install -y ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources
arch=$(dpkg --print-architecture)
codename=$(. /etc/os-release && echo "$VERSION_CODENAME")
source="deb [arch=$arch signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $codename stable"
echo $source | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y

# install docker and extensions
sudo apt-get install -y \
  docker-ce \
  docker-ce-cli \
  containerd.io \
  docker-buildx-plugin \
  docker-compose-plugin

# pull some docker images
sudo docker pull mysql:lts
sudo docker pull mariadb:lts
sudo docker pull postgres
sudo docker pull redis

# run docker command without sudo (by adding user to docker group)
sudo usermod -aG docker $USER
