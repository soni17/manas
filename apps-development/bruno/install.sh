# https://www.usebruno.com/downloads

# remove repository if it's already there
sudo rm -f /etc/apt/sources.list.d/bruno.list
sudo rm -f /etc/apt/keyrings/bruno.gpg

# add repository
sudo mkdir -p /etc/apt/keyrings
sudo mkdir -p /root/.gnupg
sudo gpg --no-default-keyring --keyring /etc/apt/keyrings/bruno.gpg --keyserver keyserver.ubuntu.com --recv-keys 9FA6017ECABE0266
echo "deb [signed-by=/etc/apt/keyrings/bruno.gpg] http://debian.usebruno.com/ bruno stable" | sudo tee /etc/apt/sources.list.d/bruno.list

# install
sudo apt update
sudo apt install -y bruno
