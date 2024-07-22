# stop execution if there's an error
set -e

# stop execution if OS is not Debian Mate
bash run-commands/check-os.sh

# enable all debian repositories
sudo apt update -y
sudo apt install -y software-properties-gtk
sudo add-apt-repository -y -s main contrib non-free non-free-firmware

# upgrade
sudo apt update -y
sudo apt full-upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

# uninstall bloat
bash run-commands/uninstall-bloat.sh

# install dependencies for installers
bash run-commands/dependencies.sh

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
