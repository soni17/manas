# app installed in control center
sudo apt-get install -y grub-customizer

# silent screen at boot
sudo sed -i "s/GRUB_TIMEOUT=5/GRUB_TIMEOUT=0/" /etc/default/grub
sudo sed -i "s/splash/loglevel=0/" /etc/default/grub
sudo update-grub
