# https://helium.computer/
# https://justaguy.dev/drew/butterrepo

# add repository
curl -fsSL https://apt.justaguy.dev/key.asc | sudo gpg --dearmor -o /usr/share/keyrings/butterrepo.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/butterrepo.gpg] https://apt.justaguy.dev stable main" | sudo tee /etc/apt/sources.list.d/butterrepo.list

# install
sudo apt-get update -y
sudo apt-get install -y helium-browser

# app launcher override to fix slow startup
cp internet/helium/helium.desktop ~/.local/share/applications
