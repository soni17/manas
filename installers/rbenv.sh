# https://github.com/rbenv/rbenv

# install ruby-build dependencies 
sudo apt install -y \
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

# remove current installation if it already exists
rm -rf ~/.rbenv

# install rbenv and ruby-build
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

# add to bashrc file 
echo ' ' >> ~/.bashrc
echo '# setup rbenv (ruby version manager)' >> ~/.bashrc
echo 'eval "$(~/.rbenv/bin/rbenv init - bash)"' >> ~/.bashrc

# get latest version of ruby
LATEST=$(~/.rbenv/bin/rbenv install -l | grep -v - | tail -1)

# install ruby and set it globally
~/.rbenv/bin/rbenv install $LATEST
~/.rbenv/bin/rbenv global $LATEST

# install ruby gems
gem install rails
gem install rubocop
gem install rufo
