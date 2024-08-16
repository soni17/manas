# install newer packages from backports repo

source /etc/os-release
repo="$VERSION_CODENAME-backports"

sudo apt update -y -t $repo
sudo apt full-upgrade -y -t $repo
sudo apt dist-upgrade -y -t $repo
sudo apt autoremove -y
