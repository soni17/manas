# silent screen at boot
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/" /etc/default/grub
sudo sed -i "s/quiet/quiet splash loglevel=0 systemd.show_status=false vt.global_cursor_default=0/" /etc/default/grub
sudo sed -i "s/#GRUB_TERMINAL="console"/GRUB_TERMINAL="console"/" /etc/default/grub
sudo update-grub

# install plymouth
sudo apt install -y \
  plymouth \
  plymouth-themes

# add plymouth theme
sudo cp -r system/grub/debian-mac-style /usr/share/plymouth/themes

# set plymouth theme
sudo plymouth-set-default-theme --rebuild-initrd debian-mac-style
