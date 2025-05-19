# uninstall only if it's already installed
if apt search httptoolkit | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove httptoolkit
fi
