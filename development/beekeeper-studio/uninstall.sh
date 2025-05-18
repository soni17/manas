# uninstall only if it's already installed
if apt search beekeeper-studio | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove beekeeper-studio
fi

# delete config folder
sudo rm -rf ~/.config/beekeeper-studio
