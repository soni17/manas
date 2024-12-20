source run-commands/updater.sh

installed_version=$(apt info ulauncher | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/Ulauncher/Ulauncher/releases/latest" | grep -Po '"tag_name": "\K[^"]*')

updater $installed_version $latest_version "accessories/ulauncher/install.sh" "ulauncher"
