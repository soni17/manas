# https://go.dev/
# https://github.com/asdf-community/asdf-golang

# install latest version of Go
asdf plugin add golang
latest=$(asdf list all golang | grep -v [a-z] | tail -2)
asdf install golang $latest
echo "golang $latest" >> ~/.tool-versions
