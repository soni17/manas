source run-commands/updater.sh

installed_version=$(apt info ytdownloader | grep Version | cut -d ' ' -f 2)

latest_version=$(curl -s "https://api.github.com/repos/aandrew-me/ytDownloader/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
latest_version=${latest_version:1}

updater $installed_version $latest_version "apps-development/ytdownloader/install.sh" "ytDownloader"
