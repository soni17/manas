source scripts/updater.sh

installed_version=$(nala show ytdownloader | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/aandrew-me/ytDownloader/releases/latest" | grep tag_name | cut -d '"' -f 4 | tr -d 'v')

updater $installed_version $latest_version "audio-video/ytdownloader/install.sh" "ytDownloader"
