source scripts/updater.sh

installed_version=$(nala show ulauncher | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/Ulauncher/Ulauncher/releases/latest" | grep tag_name | cut -d '"' -f4 | tr -d "v")

updater $installed_version $latest_version "accessories/ulauncher/install.sh" "ulauncher"
