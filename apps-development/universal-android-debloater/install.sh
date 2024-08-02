# https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/

# install android-debug-bridge
sudo apt install -y adb

# install universal-android-debloater-ng
LATEST_VERSION=$(curl -s "https://api.github.com/repos/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
wget -q https://github.com/Universal-Debloater-Alliance/universal-android-debloater-next-generation/releases/download/${LATEST_VERSION}/uad-ng-linux.zip -O /tmp/uad-ng-linux.zip
unzip /tmp/uad-ng-linux.zip -d /tmp
chmod +x /tmp/uad-ng-linux
sudo cp /tmp/uad-ng-linux /usr/bin/uad-ng
sudo cp apps-development/universal-android-debloater/uad-ng.png /usr/share/icons/hicolor/256x256/apps
sudo cp apps-development/universal-android-debloater/universal-android-debloater-ng.desktop /usr/share/applications
rm /tmp/uad-ng-linux*
