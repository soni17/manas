# https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation

# install android-debug-bridge
sudo apt-get install -y adb

# get latest version and filename
LATEST_VERSION=$(curl -s "https://api.github.com/repos/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="uad-ng-noselfupdate-linux"

# download binary
wget -q https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# make binary executable
chmod +x /tmp/$FILENAME

# copy files
sudo mv /tmp/uad-ng-noselfupdate-linux /usr/bin
sudo cp development/universal-android-debloater/uad-ng.png /usr/share/icons/hicolor/256x256/apps
sudo cp development/universal-android-debloater/universal-android-debloater-ng.desktop /usr/share/applications
