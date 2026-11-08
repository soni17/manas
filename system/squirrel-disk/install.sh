# https://www.squirreldisk.com
# https://github.com/adileo/squirreldisk

# get installer url for latest version
URL=$(curl -s "https://api.github.com/repos/adileo/squirreldisk/releases/latest" | grep "browser_download_url" | grep x86_64.tar.gz | cut -d '"' -f 4)

# download tar
wget -q $URL -O /tmp/squirreldisk.tar.gz

# extract tar in /opt folder
sudo tar -xf /tmp/squirreldisk.tar.gz -C /tmp

sudo mv /tmp/SquirrelDisk/squirreldisk /usr/bin
sudo mv /tmp/SquirrelDisk/squirreldisk.desktop /usr/share/applications
sudo mv /tmp/SquirrelDisk/squirreldisk.png /usr/share/icons

# delete downloaded file
sudo rm /tmp/squirreldisk.tar.gz
sudo rm -r /tmp/SquirrelDisk

# add config file
mkdir -p ~/.config/squirreldisk
cp system/squirrel-disk/settings.json ~/.config/squirreldisk
