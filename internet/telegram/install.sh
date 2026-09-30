# https://telegram.org
# https://github.com/telegramdesktop/tdesktop

# no need for updater script because it updates itself

# get installer url for latest version
URL=$(curl -s "https://api.github.com/repos/telegramdesktop/tdesktop/releases/latest" | grep -Po '"browser_download_url": "\K[^"]*' | grep linux)

# download tar
wget -q $URL -O /tmp/telegram.tar.xz

# extract tar in /opt folder
sudo tar -xf /tmp/telegram.tar.xz -C /opt

# run app so it completes setup then close it
/opt/Telegram/Telegram &
sleep 2
pkill -f /opt/Telegram/Telegram

# delete downloaded file
rm /tmp/telegram.tar.xz
