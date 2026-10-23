source scripts/updater.sh

installed_version=$(nala show waveterm | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/wavetermdev/waveterm/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "system/waveterm/install.sh" "waveterm"
