source scripts/updater.sh

installed_version=$(nala show helium-bin | grep Version | cut -d ' ' -f 2 | cut -d '-' -f 1)
latest_version=$(curl -s "https://api.github.com/repos/imputnet/helium-linux/releases/latest" | grep tag_name | cut -d '"' -f4 | tr -d "v")

updater $installed_version $latest_version "development/helium/install.sh" "helium browser"
