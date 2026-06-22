source scripts/updater.sh

installed_version=$(apt info discord | grep Version | cut -d ' ' -f 2 | cut -d '+' -f 1)
latest_version=$(curl -sIL "https://discord.com/api/download?platform=linux&format=deb" | sed -nE 's#.*discord-([0-9.]+)\.deb.*#\1#p')

updater $installed_version $latest_version "internet/discord/install.sh" "discord"
