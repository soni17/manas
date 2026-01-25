# https://www.google.com/chrome

# installer filename
FILENAME="google-chrome-stable_current_amd64.deb"

# download installer
wget -q https://dl.google.com/linux/direct/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# override launcher to fix slow startup
cp web-browsers/chrome/google-chrome.desktop ~/.local/share/applications
