# https://telegram.org
# https://github.com/telegramdesktop/tdesktop

# no need for updater script because it updates itself

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/telegramdesktop/tdesktop/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="tsetup.${LATEST_VERSION:1}.tar.xz"

# download tar
wget -q https://github.com/telegramdesktop/tdesktop/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# extract tar in /opt folder
sudo tar -xf /tmp/$FILENAME -C /opt

# run app so it completes setup then close it
/opt/Telegram/Telegram &
sleep 2
pkill -f /opt/Telegram/Telegram

# delete downloaded file
rm /tmp/$FILENAME
