# uninstall unused packages
sudo apt-get purge -y \
  fonts-noto \
  gnome-keyring \
  seahorse \
  firefox-esr* \
  libreoffice* \
  gimp* \
  goldendict \
  mlterm \
  mlterm-tiny \
  xterm \
  xiterm+thai \
  orca \
  mate-applet-brisk-menu \
  mate-applets \
  mate-utils \
  mate-user-guide \
  synaptic \
  plymouth

sudo apt-get autoremove -y

sudo apt-get autoclean -y

# delete residual config files
dpkg -l | grep '^rc' | awk '{print $2}' | xargs sudo apt-get purge -y
