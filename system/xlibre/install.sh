# install dependencies
sudo apt-get install -y ca-certificates curl

# add keyring
sudo install -m 0755 -d /usr/share/keyrings
curl -fsSL https://mrchicken.nexussfan.cz/publickey.asc | gpg --dearmor | sudo tee /usr/share/keyrings/NexusSfan.pgp > /dev/null
sudo chmod a+r /usr/share/keyrings/NexusSfan.pgp

# add repo
cat <<EOF | sudo tee /etc/apt/sources.list.d/xlibre-debian.sources
Types: deb
URIs: https://xlibre-debian.github.io/debian/
Suites: main
Components: stable
Signed-By: /usr/share/keyrings/NexusSfan.pgp
EOF

# install
sudo apt-get update
sudo apt-get install xlibre xlibre-archive-keyring
