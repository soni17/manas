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

# install rbenv and ruby-build
if [ ! -d ~/.rbenv ]; then
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
fi

# modify bashrc file 
echo '# setup rbenv (ruby version manager)' >> ~/.bashrc
echo 'eval "$(~/.rbenv/bin/rbenv init - bash)"' >> ~/.bashrc
echo '' >> ~/.bashrc

# install ruby
eval "$(~/.rbenv/bin/rbenv init - bash)"
rbenv install 3.2.2
rbenv install 3.1.2
rbenv global 3.2.2

# install ruby gems
gem install rails
gem install rubocop
gem install rufo
