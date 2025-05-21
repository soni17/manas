# uninstall panel applets
sudo apt-get purge -y --autoremove \
  ayatana-indicator-application \
  ayatana-indicator-bluetooth \
  ayatana-indicator-messages \
  ayatana-indicator-notifications \
  ayatana-indicator-power \
  ayatana-indicator-printers \
  ayatana-indicator-sound \
  mate-indicator-applet \
  mate-dock-applet

# delete panel menu settings
rm -rf ~/.config/menus

# delete app launcher overriders
rm -rf ~/.local/share/applications
