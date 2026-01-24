source scripts/updater.sh

installed_version=$(apt info bruno | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/usebruno/bruno/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "development/bruno/install.sh" "bruno"
