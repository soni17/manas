source scripts/updater.sh

installed_version=$(nala show pomodorolm | grep Version | cut -d ' ' -f2)
latest_version=$(curl -s "https://api.github.com/repos/vjousse/concentre/releases/latest" | grep tag_name | cut -d 'v' -f 2 | tr -d '",')

updater $installed_version $latest_version "accessories/pomodorolm/install.sh" "pomodorolm"
