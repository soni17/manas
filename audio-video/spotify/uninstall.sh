# uninstall
sudo apt-get purge -y --autoremove spotify-client

# remove repository
sudo rm /etc/apt/sources.list.d/spotify.list
sudo rm /etc/apt/trusted.gpg.d/spotify*
