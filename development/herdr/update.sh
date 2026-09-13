source scripts/updater.sh

installed_version=$(herdr --version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/herdrdev/herdr/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "development/herdr/install.sh" "Herdr"
