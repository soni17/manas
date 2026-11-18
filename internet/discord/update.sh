source scripts/updater.sh

installed_version=$(nala show discord | grep Version | cut -d ' ' -f 2 | cut -d '+' -f 1)
latest_version=$(curl -sIL "https://discord.com/api/download?platform=linux&format=deb" | grep "Discord.deb" | cut -d "/" -f 9)

updater $installed_version $latest_version "internet/discord/install.sh" "discord"
