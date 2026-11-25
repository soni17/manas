# https://zsync.eu/zfontmanager/
# https://github.com/TheHolyOneZ/ZFontManager

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/TheHolyOneZ/ZFontManager/releases/latest | grep browser_download_url | grep deb | grep amd64 | cut -d '"' -f 4)
FILENAME="/tmp/zfontmanager.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# hide mate-font-viewer from panel menu
cp accessories/zfont-manager/mate-font-viewer.desktop ~/.local/share/applications

# add configs
mkdir -p ~/.config/ZFontManager
cp accessories/zfont-manager/state.json ~/.config/ZFontManager
