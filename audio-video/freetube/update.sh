source scripts/updater.sh

installed_version=$(apt info freetube | grep Version | cut -d ' ' -f 2)

VERSIONS=$(curl -s "https://api.github.com/repos/FreeTubeApp/FreeTube/releases" | grep -Po '"tag_name": "\K[^"]*')
latest_version=$( echo $VERSIONS | cut -d ' ' -f 1)
latest_version=$(echo ${latest_version:1} | cut -d '-' -f 1)

updater $installed_version $latest_version "audio-video/freetube/install.sh" "FreeTube"
