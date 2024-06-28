# https://github.com/go-nv/goenv

# remove current installation if it already exists
rm -rf ~/.goenv

# install goenv and go-build
git clone https://github.com/go-nv/goenv.git ~/.goenv

# add to bashrc file 
echo ' ' >> ~/.bashrc
echo '# setup goenv (go version manager)' >> ~/.bashrc
echo 'export GOENV_ROOT="$HOME/.goenv"' >> ~/.bashrc
echo 'export PATH="$GOENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(goenv init -)"' >> ~/.bashrc
echo 'export PATH="$GOROOT/bin:$PATH"' >> ~/.bashrc
echo 'export PATH="$PATH:$GOPATH/bin"' >> ~/.bashrc

# activate goenv command for this script
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"

# get latest version of go
LATEST=$(goenv install -l | grep -v [a-z] | tail -1)

# install ruby and set it globally
goenv install $LATEST
goenv global $LATEST
