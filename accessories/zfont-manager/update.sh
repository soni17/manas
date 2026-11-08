source scripts/updater.sh

installed_version=$(nala show z-font-manager | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/TheHolyOneZ/ZFontManager/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "accessories/zfont-manager/install.sh" "z-font-manager"
