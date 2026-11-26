# https://httptoolkit.com
# https://github.com/httptoolkit/httptoolkit-desktop

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/httptoolkit/httptoolkit-desktop/releases/latest | grep browser_download_url | grep deb | grep x64 | cut -d '"' -f 4)

# create installer filename
FILENAME="/tmp/httptoolkit.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

# override launcher to fix slow startup
mkdir -p ~/.local/share/applications
cp development/httptoolkit/httptoolkit.desktop ~/.local/share/applications
