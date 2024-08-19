for uninstaller in apps-other/*/uninstall.sh; do source $uninstaller; done
for uninstaller in apps-development/*/uninstall.sh; do source $uninstaller; done
for uninstaller in apps-system/*/uninstall.sh; do source $uninstaller; done

rm -rf ~/.asdf

sudo apt purge -y --autoremove flatpak wget git dconf-cli
