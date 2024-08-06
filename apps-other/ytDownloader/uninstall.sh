# uninstall only if it's already installed
if apt search ytdownloader | grep installed &> /dev/null
then
  sudo apt purge -y --autoremove ytdownloader
fi
