# uninstall only if it's already installed
if apt search draw.io | grep installed &> /dev/null
then
  sudo apt purge -y --autoremove draw.io
fi
