# uninstall only if it's already installed
if apt search localsend | grep installed &> /dev/null
then
  sudo apt-get purge -y --autoremove localsend
fi
