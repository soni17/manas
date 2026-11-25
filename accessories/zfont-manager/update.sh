source scripts/updater.sh

installed_version=$(nala show z-font-manager | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/TheHolyOneZ/ZFontManager/releases/latest" | grep tag_name | cut -d "v" -f 2 | tr -d '",')

updater $installed_version $latest_version "accessories/zfont-manager/install.sh" "z-font-manager"
