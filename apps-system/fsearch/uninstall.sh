# uninstall only if it's already installed
if apt search fsearch | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove fsearch
fi

# delete configs
sudo rm -rf ~/.config/fsearch

# remove repository
sudo rm -f /etc/apt/trusted.gpg.d/home_cboxdoerfer.gpg
sudo rm -f /etc/apt/sources.list.d/home:cboxdoerfer.list
