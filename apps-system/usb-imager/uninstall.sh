# uninstall only if it's already installed
if apt search usbimager | grep installed &> /dev/null
then
  sudo apt purge -y --autoremove usbimager
fi
