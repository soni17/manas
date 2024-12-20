# uninstall android-debug-bridge
sudo apt-get purge -y --autoremove adb

# uninstall universal-android-debloater-ng
sudo rm -f /usr/bin/uad-ng
sudo rm -f /usr/share/icons/hicolor/256x256/apps/uad-ng.png
sudo rm -f /usr/share/applications/universal-android-debloater-ng.desktop

# delete config folder
sudo rm -rf ~/.config/uad
