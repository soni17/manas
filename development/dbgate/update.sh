source scripts/updater.sh

installed_version=$(nala show dbgate | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/dbgate/dbgate/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')

updater $installed_version $latest_version "development/dbgate/install.sh" "DbGate"
