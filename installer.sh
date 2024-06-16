# stop script execution if there's an error
set -e

# enable all repos
sudo apt update
sudo apt install -y software-properties-gtk
sudo add-apt-repository -y -s main contrib non-free non-free-firmware

# update and upgrade
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

# update and cleanup
sudo apt update -y
sudo apt full-upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# purge residual-config files
dpkg -l | grep '^rc' | awk '{print $2}' | xargs sudo apt-get purge -y
