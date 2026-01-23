source scripts/updater.sh

installed_version=$(apt info freetube | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/FreeTubeApp/FreeTube/releases" | grep -Po '"tag_name": "\K[^"]*' | head -n 1 | tr -d 'v' | tr -d '\-beta')

updater $installed_version $latest_version "audio-video/freetube/install.sh" "FreeTube"
