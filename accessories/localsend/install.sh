# https://localsend.org
# https://github.com/localsend/localsend

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/localsend/localsend/releases/latest | grep browser_download_url | grep deb | grep x86 | cut -d '"' -f 4)

# create installer filename
FILENAME="/tmp/localsend.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME
