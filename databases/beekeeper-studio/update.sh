source run-commands/updater.sh

installed_version=$(apt info beekeeper-studio | grep Version | cut -d ' ' -f 2)

latest_version=$(curl -s "https://api.github.com/repos/beekeeper-studio/beekeeper-studio/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
latest_version=${latest_version:1}

updater $installed_version $latest_version "databases/beekeeper-studio/install.sh" "beekeeper-studio"
