# https://www.ruby-lang.org

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
mise use --global ruby@latest
eval "$(mise activate bash)"

# install some ruby gems
gem install rails
gem install rubocop
gem install rufo
