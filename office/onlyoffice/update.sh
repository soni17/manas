source scripts/updater.sh

installed_version=$(apt info onlyoffice-desktopeditors | grep Version | cut -d ' ' -f 2 | cut -d '-' -f 1)
latest_version=$(curl -s "https://api.github.com/repos/ONLYOFFICE/DesktopEditors/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "office/onlyoffice/install.sh" "onlyoffice"
