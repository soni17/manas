# install
sudo apt install -y thunar

# make default file manager
xdg-mime default thunar.desktop inode/directory

# add config files
mkdir -p ~/.config/Thunar
cp system/thunar/configs/uca.xml ~/.config/Thunar

mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml
cp system/thunar/configs/thunar.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml
