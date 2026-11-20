source scripts/updater.sh

installed_version=$(cat /opt/AlterSend/altersend.desktop | grep Version | cut -d "=" -f 2)
latest_version=$(curl -s https://api.github.com/repos/denislupookov/altersend/releases/latest | grep tag_name | cut -d " " -f 4 | tr -d '",v')

updater $installed_version $latest_version "accessories/altersend/install.sh" "AlterSend"
