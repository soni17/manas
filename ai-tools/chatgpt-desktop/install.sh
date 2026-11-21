# https://chatgpt.com/download

# download installer
curl -s https://persistent.oaistatic.com/codex-app-prod/linux/deb/latest/chatgpt_amd64.deb -o /tmp/chatgpt_amd64.deb

# install
sudo apt-get install -y /tmp/chatgpt_amd64.deb

# delete install
sudo rm /tmp/chatgpt_amd64.deb

# override launcher
cp ai-tools/chatgpt-desktop/chatgpt.desktop ~/.local/share/applications
