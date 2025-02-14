for uninstaller in accessories/*/uninstall.sh; do source $uninstaller; done
for uninstaller in audio-video/*/uninstall.sh; do source $uninstaller; done
for uninstaller in databases/*/uninstall.sh; do source $uninstaller; done
for uninstaller in development/*/uninstall.sh; do source $uninstaller; done
for uninstaller in graphics/*/uninstall.sh; do source $uninstaller; done
for uninstaller in office/*/uninstall.sh; do source $uninstaller; done
for uninstaller in programming-languages/*/uninstall.sh; do source $uninstaller; done
for uninstaller in system/*/uninstall.sh; do source $uninstaller; done
for uninstaller in web-browsers/*/uninstall.sh; do source $uninstaller; done

sudo apt-get purge -y --autoremove flatpak wget git dconf-cli
