# https://github.com/microsoft/edit

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/microsoft/edit/releases/latest | grep browser_download_url | grep linux | grep x86 | cut -d '"' -f 4)
FILENAME="/tmp/msedit.tar.gz"

# download archive
curl -sL $URL -o $FILENAME

# uncompress archive
tar -xzf $FILENAME -C /tmp

# move binary to /usr/bin and rename as msedit
sudo mv /tmp/edit /usr/bin/msedit

# delete installer
rm $FILENAME
