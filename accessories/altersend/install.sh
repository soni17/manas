# https://altersend.com
# https://github.com/denislupookov/altersend

# remove if already installed
sudo rm -r /opt/AlterSend

# download AppImage
URL=$(curl -s https://api.github.com/repos/denislupookov/altersend/releases/latest | grep browser_download_url | grep AppImage | grep x86_64 | cut -d '"' -f 4)
curl -sL -o /tmp/AlterSend.AppImage $URL

# make AppImage executable
sudo chmod +x /tmp/AlterSend.AppImage

# unpack AppImage and rename folder
cd /opt
sudo /tmp/AlterSend.AppImage --appimage-extract
sudo mv squashfs-root AlterSend

# delete temp file
sudo rm /tmp/AlterSend.AppImage

# add icon and launcher
cd -
sudo cp accessories/altersend/altersend.png /usr/share/icons
sudo cp accessories/altersend/altersend.desktop /usr/share/applications
