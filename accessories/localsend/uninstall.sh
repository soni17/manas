# uninstall only if it's already installed
if apt search localsend | grep installed &> /dev/null
then
  sudo apt purge -y --autoremove localsend
fi
