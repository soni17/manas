echo " "
echo "cleaning up..."

sudo apt-get autoremove -y
sudo apt-get autoclean -y

# delete residual config files
dpkg -l | grep '^rc' | awk '{print $2}' | xargs sudo apt-get purge -y
