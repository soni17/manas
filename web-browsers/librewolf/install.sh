# https://librewolf.net

# add repository with extrepo
sudo extrepo enable librewolf
sudo apt-get update -y

# install
sudo apt-get install -y librewolf

# add config file
mkdir -p ~/.librewolf
cp web-browsers/librewolf/librewolf.overrides.cfg ~/.librewolf

# delete mozilla settings folder
sudo rm -rf ~/.mozilla
