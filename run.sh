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

# install dependencies for installers
sudo apt install -y \
  git \
  wget \
  curl \
  dconf-cli

# install asdf-version-manager (also a dependency)
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cp configs/asdfrc ~/.asdfrc
. "$HOME/.asdf/asdf.sh"

# install flatpak and flathub repo
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# run installers
for script in ./installers/*.sh; do source $script; done

# update bashrc file
cp configs/bashrc ~/.bashrc
cp configs/bash-aliases ~/.bash_aliases

# cleanup
sudo apt autoremove -y
sudo apt autoclean -y

# more cleanup: delete residual config files
dpkg -l | grep '^rc' | awk '{print $2}' | xargs sudo apt-get purge -y

# reboot
sudo reboot
