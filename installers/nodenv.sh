# https://github.com/nodenv/nodenv

# install nodenv and node-build if not installed
if [ ! -d ~/.nodenv ]; then
  git clone https://github.com/nodenv/nodenv.git ~/.nodenv
  git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build
fi

# modify bashrc file
echo '' >> ~/.bashrc
echo '# setup nodenv (node version manager)' >> ~/.bashrc
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(nodenv init - bash)"' >> ~/.bashrc
echo '' >> ~/.bashrc

# install node
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init - bash)"
nodenv install 21.2.0
nodenv install 20.8.1
nodenv global 21.2.0
