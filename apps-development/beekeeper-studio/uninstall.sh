# uninstall only if it's already installed
if apt search beekeeper-studio | grep installed &> /dev/null
then
  sudo apt purge -y --autoremove beekeeper-studio
fi

# remove repository
sudo rm -f /etc/apt/sources.list.d/beekeeper-studio-app.list
sudo rm -f /usr/share/keyrings/beekeeper.gpg
