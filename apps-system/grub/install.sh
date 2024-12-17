# app installed in control center
sudo apt-get install -y grub-customizer

# silent screen at boot
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/" /etc/default/grub
sudo sed -i "s/splash/console=tty12 loglevel=3 vt.global_cursor_default=0/" /etc/default/grub
sudo update-grub
