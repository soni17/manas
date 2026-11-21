source scripts/updater.sh

installed_version=$(pi --version)
latest_version=$(curl -s https://api.github.com/repos/earendil-works/pi/releases/latest | grep tag_name | cut -d " " -f 4 | tr -d '",v')

updater $installed_version $latest_version "ai-tools/pi/install.sh" "pi-coding-agent"
