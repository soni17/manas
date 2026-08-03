source scripts/updater.sh

installed_version=$(nala show joplin | grep Version | cut -d ' ' -f 2 | cut -d '-' -f 1)
latest_version=$(curl -s "https://api.github.com/repos/laurent22/joplin/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "office/joplin/install.sh" "joplin"
