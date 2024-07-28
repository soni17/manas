# install freetube
flatpak install flathub --assumeyes --system io.freetubeapp.FreeTube

# settings file
mkdir -p ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube
cp installers/freetube/settings.db ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube

# panel icon
cp installers/freetube/io.freetubeapp.FreeTube.desktop ~/.local/share/applications
