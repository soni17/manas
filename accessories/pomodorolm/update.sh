source scripts/updater.sh

installed_version=$(nala show pomodorolm | grep Version | cut -d ' ' -f 2 | cut -d '+' -f 1)
latest_version=$(curl -s "https://api.github.com/repos/vjousse/concentre/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | cut -d 'v' -f 2)

updater $installed_version $latest_version "accessories/pomodorolm/install.sh" "pomodorolm"
