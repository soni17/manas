source scripts/updater.sh

installed_version=$(/usr/bin/squirreldisk --version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/adileo/squirreldisk/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "system/squirrel-disk/install.sh" "squirrel-disk"
