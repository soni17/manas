# https://www.ruby-lang.org/
# https://github.com/asdf-vm/asdf-ruby

# install ruby build dependencies 
sudo apt-get install -y \
  autoconf \
  patch \
  build-essential \
  rustc \
  libssl-dev \
  libyaml-dev \
  libreadline6-dev \
  zlib1g-dev \
  libgmp-dev \
  libncurses5-dev \
  libffi-dev \
  libgdbm6 \
  libgdbm-dev \
  libdb-dev \
  uuid-dev

# install latest version of ruby
asdf plugin add ruby
asdf install ruby latest
asdf global ruby latest

# install some ruby gems
gem install rails
gem install rubocop
gem install rufo
