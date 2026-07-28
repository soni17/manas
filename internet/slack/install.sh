# add gpg key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://packagecloud.io/slacktechnologies/slack/gpgkey | sudo gpg --dearmor -o /etc/apt/keyrings/slack.gpg

# add repository
echo "deb [signed-by=/etc/apt/keyrings/slack.gpg] https://packagecloud.io/slacktechnologies/slack/debian/ jessie main" | sudo tee /etc/apt/sources.list.d/slack.list
sudo apt-get update -y

# install
sudo apt-get install -y slack-desktop

# override launcher to fix slow startup
mkdir -p ~/.local/share/applications
cp internet/slack/slack.desktop ~/.local/share/applications
