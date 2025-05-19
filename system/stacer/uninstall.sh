# uninstall only if it's already installed
if apt search stacer | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove stacer
fi

# delete config folder
sudo rm -rf ~/.config/stacer
