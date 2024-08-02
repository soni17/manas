# https://github.com/AyatanaIndicators

sudo apt-get install -y \
  ayatana-indicator-application \
  ayatana-indicator-common \
  ayatana-indicator-messages \
  ayatana-indicator-notifications \
  ayatana-indicator-power \
  ayatana-indicator-printers \
  ayatana-indicator-sound \
  mate-indicator-applet \
  mate-indicator-applet-common \
  mate-dock-applet

# fix for network monitor applet
sudo sed -i "s/Exec=nm-applet/Exec=nm-applet --indicator/" /etc/xdg/autostart/nm-applet.desktop
