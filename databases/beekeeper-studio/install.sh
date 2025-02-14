# https://www.beekeeperstudio.io
# https://docs.beekeeperstudio.io/installation/linux/#apt-deb

# remove repository if it's already there
sudo rm -f /etc/apt/sources.list.d/beekeeper-studio-app.list
sudo rm -f /usr/share/keyrings/beekeeper.gpg

# add repository
curl -fsSL https://deb.beekeeperstudio.io/beekeeper.key | sudo gpg --dearmor --output /usr/share/keyrings/beekeeper.gpg
sudo chmod go+r /usr/share/keyrings/beekeeper.gpg
echo "deb [signed-by=/usr/share/keyrings/beekeeper.gpg] https://deb.beekeeperstudio.io stable main" | sudo tee /etc/apt/sources.list.d/beekeeper-studio-app.list > /dev/null

# install
sudo apt-get update
sudo apt-get install -y beekeeper-studio
