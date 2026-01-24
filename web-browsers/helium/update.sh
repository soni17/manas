source scripts/updater.sh

installed_version=$(apt info helium-browser | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/arvaidasre/helium-browser-deb/releases/latest" | grep -Po '"tag_name": "\K[^"]*')

updater $installed_version $latest_version "web-browsers/helium/install.sh" "helium-browser"
