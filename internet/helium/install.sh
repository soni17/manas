# https://helium.computer/
# https://github.com/imputnet/helium
# https://github.com/imputnet/helium-linux

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/imputnet/helium-linux/releases/latest | grep browser_download_url | grep deb | grep amd64 | cut -d '"' -f 4)
FILENAME="/tmp/helium-browser.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# app launcher override to fix slow startup
cp internet/helium/helium.desktop ~/.local/share/applications
