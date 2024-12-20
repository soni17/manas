sudo apt-get purge -y --autoremove grub-customizer

# reverse settings
sudo sed -i "s/GRUB_TIMEOUT=0/GRUB_TIMEOUT=5/" /etc/default/grub
sudo sed -i "s/console=tty12 loglevel=3 vt.global_cursor_default=0/splash/" /etc/default/grub
sudo sed -i "s/GRUB_TERMINAL="console"/#GRUB_TERMINAL="console"/" /etc/default/grub
sudo update-grub
