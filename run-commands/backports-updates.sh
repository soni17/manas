source /etc/os-release
oscodename=$VERSION_CODENAME

sudo apt-get update -y -t $oscodename-backports
sudo apt-get upgrade -y -t $oscodename-backports
