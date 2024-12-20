# uninstall only if it's already installed
if apt search usbimager | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove usbimager
fi
