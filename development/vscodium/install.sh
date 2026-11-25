# https://vscodium.com
# https://github.com/VSCodium/vscodium

# get URL of latest installer
URL=$(curl -s https://api.github.com/repos/VSCodium/vscodium/releases/latest | grep browser_download_url | grep deb | grep amd64 | grep -v sha | cut -d '"' -f 4)
FILENAME="/tmp/vscodium.deb"

# download installer
curl -sL $URL -o $FILENAME

# install
sudo apt-get install -y $FILENAME

# delete installer
rm $FILENAME

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
codium --install-extension tamasfe.even-better-toml

# add config file
mkdir -p ~/.config/VSCodium/User
cp development/vscodium/settings.json ~/.config/VSCodium/User
