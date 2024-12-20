# https://www.google.com/chrome/index.html

# download
FILENAME="google-chrome-stable_current_amd64.deb"
wget -q https://dl.google.com/linux/direct/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# launcher icon that fixes slow startup
mkdir ~/.local/share/applications
cp web-browsers/chrome/google-chrome.desktop ~/.local/share/applications
