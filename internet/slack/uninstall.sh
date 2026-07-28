# uninstall
sudo apt-get purge -y --autoremove slack-desktop

# remove repository
sudo rm /etc/apt/keyrings/slack.gpg
sudo rm /etc/apt/sources.list.d/slack.list

# delete launcher icon
rm ~/.local/share/applications/slack.desktop
