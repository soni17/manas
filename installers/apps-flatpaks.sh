# install flatpak
sudo apt install -y flatpak

# add flatpak repository
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# install flatpak apps
flatpak install flathub --assumeyes --system org.gnome.SimpleScan
flatpak install flathub --assumeyes --system br.eng.silas.qpdftools
flatpak install flathub --assumeyes --system io.podman_desktop.PodmanDesktop
flatpak install flathub --assumeyes --system com.jgraph.drawio.desktop
flatpak install flathub --assumeyes --system org.localsend.localsend_app
flatpak install flathub --assumeyes --system io.github.aandrew_me.ytdn
flatpak install flathub --assumeyes --system io.freetubeapp.FreeTube
flatpak install flathub --assumeyes --system com.usebottles.bottles

# allow bottles to create desktop entries
flatpak override com.usebottles.bottles --user --filesystem=xdg-data/applications

# fix slow startup for FreeTube
sudo sed -i "s/StartupNotify=true//" /var/lib/flatpak/exports/share/applications/io.freetubeapp.FreeTube.desktop
