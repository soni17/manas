source scripts/updater.sh

installed_version=$(fresh -V | cut -d ' ' -f 2)

latest_version=$(curl -s "https://api.github.com/repos/sinelaw/fresh/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
latest_version=${latest_version:1}

updater $installed_version $latest_version "development/fresh-editor/install.sh" "fresh-editor"
