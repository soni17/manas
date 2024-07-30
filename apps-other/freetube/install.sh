# https://github.com/FreeTubeApp/FreeTube

# install freetube
flatpak install flathub --assumeyes --system io.freetubeapp.FreeTube

# settings file
mkdir -p ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube
cp apps-other/freetube/settings.db ~/.var/app/io.freetubeapp.FreeTube/config/FreeTube
