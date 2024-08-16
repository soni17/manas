# install newer packages from backports repo

source /etc/os-release
repo="$VERSION_CODENAME-backports"

sudo apt-get update -y -t $repo
sudo apt-get full-upgrade -y -t $repo
sudo apt-get dist-upgrade -y -t $repo
