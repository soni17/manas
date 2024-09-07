# uninstall only if it's already installed
if apt search librewolf | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove librewolf
fi

# delete config folder
sudo rm -rf ~/.librewolf

# remove repository
sudo rm -f /etc/apt/sources.list.d/librewolf.sources
sudo rm -f /usr/share/keyrings/librewolf.gpg
