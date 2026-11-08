source scripts/updater.sh

installed_version=$(~/.local/bin/herdr-app --version | cut -d ' ' -f 2)
latest_version=$(curl -s https://releases.herdr.dev/app/latest.json | grep version | cut -d '"' -f 4)

updater $installed_version $latest_version "system/herdr-app/install.sh" "herdr-app"
