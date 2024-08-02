# https://librewolf.net/installation/debian/

# remove repository if it's already there
sudo rm -f /etc/apt/sources.list.d/librewolf.sources
sudo rm -f /usr/share/keyrings/librewolf.gpg

# add repository
distro=$(if echo " una bookworm vanessa focal jammy bullseye vera uma " | grep -q " $(lsb_release -sc) "; then lsb_release -sc; else echo focal; fi)
wget -O- https://deb.librewolf.net/keyring.gpg | sudo gpg --dearmor -o /usr/share/keyrings/librewolf.gpg
sudo tee /etc/apt/sources.list.d/librewolf.sources << EOF > /dev/null
Types: deb
URIs: https://deb.librewolf.net
Suites: $distro
Components: main
Architectures: amd64
Signed-By: /usr/share/keyrings/librewolf.gpg
EOF

# install
sudo apt-get update
sudo apt-get install -y librewolf

# config file
mkdir -p ~/.librewolf
cp apps-other/librewolf/librewolf.overrides.cfg ~/.librewolf
