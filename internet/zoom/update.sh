source scripts/updater.sh

installed_version=$(apt info zoom | grep Version | cut -d ' ' -f 2 | cut -d '+' -f 1)
latest_version=$(curl -sI https://zoom.us/client/latest/zoom_amd64.deb | grep -i location | sed -E 's/.*prod\/([^\/]+)\/.*/\1/')

updater $installed_version $latest_version "internet/zoom/install.sh" "zoom"
