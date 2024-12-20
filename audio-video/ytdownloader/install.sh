# https://github.com/aandrew-me/ytDownloader

# download and install
LATEST_VERSION=$(curl -s "https://api.github.com/repos/aandrew-me/ytDownloader/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="YTDownloader_Linux.deb"
wget -q https://github.com/aandrew-me/ytDownloader/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME
sudo apt-get install -y /tmp/$FILENAME
rm /tmp/$FILENAME

# launcher icon
mkdir -p ~/.local/share/applications
cp audio-video/ytdownloader/ytdownloader* ~/.local/share/applications
