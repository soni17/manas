source run-commands/updater.sh

installed_version=$(apt info localsend | grep Version | cut -d ' ' -f 2 | cut -d '+' -f 1)

latest_version=$(curl -s "https://api.github.com/repos/localsend/localsend/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
latest_version=${latest_version:1}

updater $installed_version $latest_version "accessories/localsend/install.sh" "localsend"
