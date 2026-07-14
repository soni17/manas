source scripts/updater.sh

installed_version=$(ollama --version | cut -d " " -f 4)
latest_version=$(curl -s "https://api.github.com/repos/ollama/ollama/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "development/ollama/install.sh" "ollama"
