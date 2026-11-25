# https://ytdn.netlify.app
# https://github.com/aandrew-me/ytDownloader

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/aandrew-me/ytDownloader/releases/latest | grep browser_download_url | grep deb | cut -d '"' -f 4)
FILENAME="/tmp/ytdownloader.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# override launcher
mkdir -p ~/.local/share/applications
cp audio-video/ytdownloader/ytdownloader.desktop ~/.local/share/applications
