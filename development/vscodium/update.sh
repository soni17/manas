source scripts/updater.sh

installed_version=$(apt info codium | grep Version | cut -d ' ' -f 2)

latest_version=$(curl -s "https://api.github.com/repos/VSCodium/vscodium/releases/latest" | grep -Po '"tag_name": "\K[^"]*')

updater $installed_version $latest_version "development/vscodium/install.sh" "vscodium"
