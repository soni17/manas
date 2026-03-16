source scripts/updater.sh

installed_version=$(apt info antares | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/antares-sql/antares/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "development/antares-sql/install.sh" "antares-slq"
