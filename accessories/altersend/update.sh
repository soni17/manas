source scripts/updater.sh

installed_version=$()
latest_version=$(curl -s https://api.github.com/repos/denislupookov/altersend/releases/latest | grep tag_name | cut -d " " -f 4 | tr -d '",v')

updater $installed_version $latest_version "accessories/altersend/install.sh" "AlterSend"
