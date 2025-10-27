# install panel applets
sudo apt-get install -y \
  caja-admin \
  caja-image-converter \
  caja-open-terminal \
  caja-rename \
  ayatana-indicator-application \
  ayatana-indicator-bluetooth \
  ayatana-indicator-messages \
  ayatana-indicator-notifications \
  ayatana-indicator-power \
  ayatana-indicator-printers \
  ayatana-indicator-sound \
  mate-indicator-applet \
  mate-dock-applet \
  mozo

# fix for network monitor applet
sudo sed -i "s/Exec=nm-applet/Exec=nm-applet --indicator/" /etc/xdg/autostart/nm-applet.desktop

# move power-statistics to control-center apps
sudo sed -i "s/Categories=GTK;System;Monitor;/Categories=Settings;HardwareSettings;/g" /usr/share/applications/mate-power-statistics.desktop

# modify panel menus
rm -rf ~/.config/menus
mkdir -p ~/.config/menus
cp system/panel/mate-applications.menu ~/.config/menus

# app launchers overrides
mkdir -p ~/.local/share/applications
cp system/panel/app-launchers/* ~/.local/share/applications

# disable recent documents history
if ! lsattr ~/.local/share/recently-used.xbel | grep i
then
  echo -n > ~/.local/share/recently-used.xbel
  sudo chattr +i ~/.local/share/recently-used.xbel
fi
