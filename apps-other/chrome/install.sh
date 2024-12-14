# https://www.google.com/chrome/index.html

# download and install
FILENAME="google-chrome-stable_current_amd64.deb"
wget -q https://dl.google.com/linux/direct/$FILENAME -O /tmp/$FILENAME
sudo apt-get install -y /tmp/$FILENAME
rm /tmp/$FILENAME

# launcher icon that fixes slow startup
mkdir ~/.local/share/applications
cp apps-other/chrome/google-chrome.desktop ~/.local/share/applications
