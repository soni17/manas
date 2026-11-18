# uninstall
sudo apt-get purge -y --autoremove slack-desktop

# remove launcher
rm ~/.local/share/applications/slack.desktop

# remove repository
sudo rm /etc/apt/keyrings/slacktechnologies_slack-archive-keyring.gpg
sudo rm /etc/apt/sources.list.d/slack.sources
