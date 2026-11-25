# https://github.com/wavetermdev/waveterm

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/wavetermdev/waveterm/releases/latest | grep browser_download_url | grep deb | grep amd64 | cut -d '"' -f 4)
FILENAME="/tmp/waveterm.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# override launcher to change category
mkdir -p ~/.local/share/applications
cp system/waveterm/waveterm.desktop ~/.local/share/applications
