source run-commands/updater.sh

installed_version=$(apt info devtoys | grep Version | cut -d ' ' -f 2)
versions=$(curl -s "https://api.github.com/repos/DevToys-app/DevToys/releases" | grep -Po '"tag_name": "v\K[^"]*')
latest_version=$( echo $versions | cut -d ' ' -f 1)

updater $installed_version $latest_version "development/devtoys/install.sh" "devtoys"
