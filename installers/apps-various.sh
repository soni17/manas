# install apps from debian repository
sudo apt install -y \
  gdebi \
  mozo \
  blueman \
  gucharmap \
  transmission \
  vlc \
  shotcut \
  rhythmbox \
  webcamoid \
  gtkhash \
  timeshift \
  gnome-disk-utility \
  gnome-clocks \
  gnome-screenshot \

# install apps from flathub repository
flatpak install flathub --assumeyes --system org.gnome.SimpleScan
flatpak install flathub --assumeyes --system br.eng.silas.qpdftools
flatpak install flathub --assumeyes --system com.jgraph.drawio.desktop
flatpak install flathub --assumeyes --system org.localsend.localsend_app
flatpak install flathub --assumeyes --system io.github.aandrew_me.ytdn
flatpak install flathub --assumeyes --system com.github.marktext.marktext
flatpak install flathub --assumeyes --system io.github.shiftey.Desktop
