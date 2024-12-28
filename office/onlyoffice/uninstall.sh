# uninstall only if it's already installed
if apt search onlyoffice-desktopeditors | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove onlyoffice-desktopeditors
fi

# delete config folder
sudo rm -rf ~/.config/onlyoffice

# remove repository
sudo extrepo disable onlyoffice-desktopeditors
sudo apt-get update -y
