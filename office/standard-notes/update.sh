source run-commands/updater.sh

installed_version=$(apt info standard-notes | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/standardnotes/app/releases/latest" | grep -Po '"tag_name": "@standardnotes/desktop@\K[^"]*')

updater $installed_version $latest_version "office/standard-notes/install.sh" "standard-notes"
