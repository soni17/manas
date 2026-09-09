# install
sudo apt install -y \
  thunar \
  thunar-archive-plugin

sudo apt purge -y thunar-volman

# add config files
mkdir -p ~/.config/Thunar
cp system/thunar/uca.xml ~/.config/Thunar

mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml
cp system/thunar/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml
