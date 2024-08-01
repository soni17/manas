# uninstall only if it's already installed
if apt search onlyoffice-desktopeditors | grep installed &> /dev/null
then
  sudo apt purge -y --autoremove onlyoffice-desktopeditors
fi

# delete configs
sudo rm -rf ~/.config/onlyoffice

# remove repository
sudo rm -f /etc/apt/sources.list.d/onlyoffice.list
sudo rm -f /usr/share/keyrings/onlyoffice.gpg
