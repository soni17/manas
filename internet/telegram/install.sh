# https://telegram.org
# https://github.com/telegramdesktop/tdesktop

# no need for updater script because it updates itself

# get installer url for latest version
URL=$(curl -s "https://api.github.com/repos/telegramdesktop/tdesktop/releases/latest" | grep -Po '"browser_download_url": "\K[^"]*' | grep linux)

# crete filename for installer
FILENAME="/tmp/telegram.tar.xz"

# download tar
wget -q $URL -O $FILENAME

# extract tar in /opt folder
sudo tar -xf $FILENAME -C /opt

# run app so it completes setup then close it
/opt/Telegram/Telegram &
sleep 2
pkill -f /opt/Telegram/Telegram

# delete downloaded file
rm $FILENAME
