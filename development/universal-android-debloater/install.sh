# https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation

# install android-debug-bridge
sudo apt-get install -y adb

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/latest | grep browser_download_url | grep linux | grep noselfupdate | grep -v checksum | grep -v tar | cut -d '"' -f 4)
FILENAME="/tmp/uad-ng-noselfupdate-linux"

# download installer
curl -sL $URL -o $FILENAME

# make binary executable
chmod +x $FILENAME

# copy files
sudo mv /tmp/uad-ng-noselfupdate-linux /usr/bin
sudo cp development/universal-android-debloater/uad-ng.png /usr/share/icons/hicolor/256x256/apps
sudo cp development/universal-android-debloater/universal-android-debloater-ng.desktop /usr/share/applications
