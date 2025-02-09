# https://nodejs.org/en
# https://github.com/asdf-vm/asdf-nodejs

# install latest version of Node
asdf plugin add nodejs
latest=$(asdf list all nodejs | tail -2)
asdf install nodejs $latest
echo "nodejs $latest" >> ~/.tool-versions
