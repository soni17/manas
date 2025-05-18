# https://github.com/blueman-project/blueman

# install
sudo apt-get install -y blueman

# settings
gsettings set org.blueman.general plugin-list "['\!StatusNotifierItem']"
gsettings set org.blueman.general window-properties "[578, 393, 3028, 502]"
gsettings set org.blueman.plugins.powermanager auto-power-on "@mb false"
