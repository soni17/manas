source scripts/updater.sh

installed_version=$(apt info ytdownloader | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/aandrew-me/ytDownloader/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "audio-video/ytdownloader/install.sh" "ytDownloader"
