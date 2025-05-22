# https://vscodium.com
# https://github.com/VSCodium/vscodium

# get installer filename and latest version
LATEST_VERSION=$(curl -s "https://api.github.com/repos/VSCodium/vscodium/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
FILENAME="codium_${LATEST_VERSION}_amd64.deb"

# download installer
wget -q https://github.com/VSCodium/vscodium/releases/download/$LATEST_VERSION/$FILENAME -O /tmp/$FILENAME

# install
sudo apt-get install -y /tmp/$FILENAME

# delete installer
rm /tmp/$FILENAME

# install extensions
codium --install-extension akamud.vscode-theme-onedark
codium --install-extension janicweber.soft-grey-theme
codium --install-extension file-icons.file-icons
codium --install-extension esbenp.prettier-vscode
codium --install-extension formulahendry.auto-rename-tag
codium --install-extension vortizhe.simple-ruby-erb
codium --install-extension mbessey.vscode-rufo
codium --install-extension svelte.svelte-vscode
codium --install-extension zaaack.markdown-editor
codium --install-extension jeanp413.open-remote-ssh
codium --install-extension ritwickdey.liveserver
codium --install-extension arturock.gitstash

# add config file
mkdir -p ~/.config/VSCodium/User
cp development/vscodium/settings.json ~/.config/VSCodium/User
