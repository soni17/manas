# stop execution if there's an error
set -e

# stop execution if OS is not Debian Mate
. /etc/os-release
distro=$ID
desktop=$DESKTOP_SESSION

if [ "$distro" != "debian" ] || [ "$desktop" != "mate" ]; then
  echo "$(tput setaf 1)You are not running Debian with Mate desktop environment."
  echo "$(tput setaf 1)Installation stopped."
  exit 1
fi

# save copy of initial bashrc file
cp ~/.bashrc ~/.bashrc-initial

# enable all debian repositories
sudo apt update -y
sudo apt install -y software-properties-gtk
sudo add-apt-repository -y -s main contrib non-free non-free-firmware

# upgrade
sudo apt update -y
sudo apt full-upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# run uninstaller
bash uninstallers/uninstall-bloat.sh

# dependencies for installers
sudo apt install -y \
  git \
  wget \
  curl \
  dconf-cli

# run installers
for script in ./installers/*.sh; do source $script; done

# update bashrc file
mv ~/.bashrc ~/.bashrc-old
cp configs/bashrc ~/.bashrc
cp configs/bash-aliases ~/.bash_aliases

# upgrade
sudo apt update -y
sudo apt full-upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y

# delete residual config files
dpkg -l | grep '^rc' | awk '{print $2}' | xargs sudo apt-get purge -y

# reboot
sudo reboot
