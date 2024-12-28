# uninstall only if it's already installed
if apt search librewolf | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove librewolf
fi

# delete config folder
sudo rm -rf ~/.librewolf

# remove repository
sudo extrepo disable librewolf
sudo apt-get update -y
