# https://helpcenter.onlyoffice.com/installation/desktop-install-ubuntu.aspx

# add repository
sudo extrepo enable onlyoffice-desktopeditors

# install
sudo apt-get update -y
sudo apt-get install -y onlyoffice-desktopeditors

# config file
mkdir -p ~/.config/onlyoffice
cp office/onlyoffice/DesktopEditors.conf ~/.config/onlyoffice
