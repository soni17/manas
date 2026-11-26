# https://altersend.com
# https://github.com/denislupookov/altersend

# remove if already installed
sudo rm -r /opt/AlterSend

# get URL of latest release
URL=$(curl -s https://api.github.com/repos/denislupookov/altersend/releases/latest | grep browser_download_url | grep AppImage | grep x86_64 | cut -d '"' -f 4)

# create installer filename
FILENAME="/tmp/AlterSend.AppImage"

# download AppImage
curl -sL $URL -o $FILENAME

# make AppImage executable
sudo chmod +x $FILENAME

# unpack AppImage and rename folder
cd /opt
sudo $FILENAME --appimage-extract
sudo mv squashfs-root AlterSend

# delete AppImage
sudo rm $FILENAME

# add icon and launcher
cd -
sudo cp accessories/altersend/altersend.png /usr/share/icons
sudo cp accessories/altersend/altersend.desktop /usr/share/applications
