# uninstall only if it's already installed
if apt search bruno | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove bruno
fi

# remove repository
sudo rm -f /etc/apt/sources.list.d/bruno.list
sudo rm -f /etc/apt/keyrings/bruno.gpg
