# https://telegram.org
# https://github.com/telegramdesktop/tdesktop
# no need for updater because it updates itself

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/telegramdesktop/tdesktop/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="tsetup.${LATEST_VERSION:1}.tar.xz"

# download tar
wget -q https://github.com/telegramdesktop/tdesktop/releases/download/${LATEST_VERSION}/$FILENAME -O /tmp/$FILENAME

# extract tar in tmp folder
tar -xf /tmp/$FILENAME -C /tmp

# create app folder in /opt (delete existing first)
sudo rm -rf /opt/Telegram
sudo mkdir -p /opt/Telegram

# move app files from /tmp to /opt
sudo mv /tmp/Telegram /opt

# run app so that it completes setup
/opt/Telegram/Telegram &
sleep 2

# close app
pkill -f /opt/Telegram/Telegram

# delete downloaded file
rm /tmp/$FILENAME
