source run-commands/updater.sh

installed_version=$(apt info draw.io | grep Version | cut -d ' ' -f 2)

latest_version=$(curl -s "https://api.github.com/repos/jgraph/drawio-desktop/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
latest_version=${latest_version:1}

updater $installed_version $latest_version "apps-other/drawio/install.sh" "drawio"
