# https://lmstudio.ai
# https://lmstudio.ai/download?os=linux&arch=x64

# set filename
FILENAME=lm-studio-installer.deb

# download installer
wget -q "https://lmstudio.ai/download/latest/linux/x64?format=deb" -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# override launcher to fix icon
mkdir -p ~/.local/share/applications
cp ai-tools/lm-studio/ai.elementlabs.lmstudio.desktop ~/.local/share/applications
