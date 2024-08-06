# https://github.com/aandrew-me/ytDownloader

LATEST_VERSION=$(curl -s "https://api.github.com/repos/aandrew-me/ytDownloader/releases/latest" | grep -Po '"tag_name": "\K[^"]*')

# download and install
wget -q https://github.com/aandrew-me/ytDownloader/releases/download/${LATEST_VERSION}/YTDownloader_Linux_amd64.deb -O /tmp/YTDownloader_Linux_amd64.deb
sudo apt-get install -y /tmp/YTDownloader_Linux_amd64.deb
rm /tmp/YTDownloader_Linux_amd64.deb
