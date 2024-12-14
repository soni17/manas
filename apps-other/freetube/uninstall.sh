# uninstall only if it's already installed
if apt search freetube | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove freetube
fi

# delete config folder
sudo rm -rf ~/.config/FreeTube

# delete launcher icon
rm ~/.local/share/applications/freetube*
