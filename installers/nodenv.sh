# https://github.com/nodenv/nodenv

# remove current installation if it already exists
rm -rf ~/.nodenv

# install nodenv and node-build
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build

# add to bashrc file
echo ' ' >> ~/.bashrc
echo '# setup nodenv (node version manager)' >> ~/.bashrc
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(nodenv init - bash)"' >> ~/.bashrc

# activate nodenv command for this script
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init - bash)"

# get latest version of node
LATEST=$(nodenv install -l | grep -v - | tail -1)

# install node and set it globally
nodenv install $LATEST
nodenv global $LATEST
