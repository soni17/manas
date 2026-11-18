# https://slack.com

# add repository
sudo apt-get install -y curl ca-certificates gnupg

sudo curl -fsSL https://packagecloud.io/slacktechnologies/slack/gpgkey | sudo gpg --dearmor --yes -o /etc/apt/keyrings/slacktechnologies_slack-archive-keyring.gpg

echo "
Types: deb
URIs: https://packagecloud.io/slacktechnologies/slack/debian
Suites: jessie
Components: main
Architectures: amd64
Signed-By: /etc/apt/keyrings/slacktechnologies_slack-archive-keyring.gpg" | \
sudo tee /etc/apt/sources.list.d/slack.sources

# install
sudo apt-get update -y
sudo apt-get install -y slack-desktop

# add launcher override to fix slow startup
cp internet/slack-desktop/slack.desktop ~/.local/share/applications
