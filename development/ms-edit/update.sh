source scripts/updater.sh

installed_version=$(msedit -v | cut -d ' ' -f 3)
latest_version=$(curl -s "https://api.github.com/repos/microsoft/edit/releases/latest" | grep tag_name | cut -d '"' -f4 | tr -d "v")

updater $installed_version $latest_version "development/ms-edit/install.sh" "ms-edit"
