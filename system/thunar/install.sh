# install
sudo apt install -y thunar

# add config files
mkdir -p ~/.config/Thunar
cp system/thunar/configs/uca.xml ~/.config/Thunar

mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml
cp system/thunar/configs/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml
