# https://zsync.eu/zfontmanager/
# https://github.com/TheHolyOneZ/ZFontManager

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/TheHolyOneZ/ZFontManager/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="ZFontManager_${LATEST_VERSION:1}_amd64.deb"

# download installer
wget -q https://github.com/TheHolyOneZ/ZFontManager/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# hide mate-font-viewer from panel menu
cp accessories/zfont-manager/mate-font-viewer.desktop ~/.local/share/applications

# 
mkdir -p ~/.config/ZFontManager
cp accessories/zfont-manager/state.json ~/.config/ZFontManager
