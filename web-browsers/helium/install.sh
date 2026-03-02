# https://helium.computer/
# https://codeberg.org/justaguylinux/butterrepo

# add repository
curl -fsSL https://justaguylinux.codeberg.page/butterrepo/key.asc | sudo gpg --dearmor -o /usr/share/keyrings/butterrepo.gpg
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/butterrepo.gpg] https://justaguylinux.codeberg.page/butterrepo stable main" | sudo tee /etc/apt/sources.list.d/butterrepo.list

# install
sudo apt-get update -y
sudo apt-get install -y helium-browser

# app launcher override to fix slow startup
cp web-browsers/helium/helium.desktop ~/.local/share/applications
