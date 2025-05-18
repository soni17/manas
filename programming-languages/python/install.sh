# https://www.python.org
# https://mise.jdx.dev/lang/python.html

# install python build dependencies
sudo apt-get install -y \
  build-essential \
  libssl-dev \
  zlib1g-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
	curl \
  git \
  libncursesw5-dev \
  xz-utils \
  tk-dev \
  libxml2-dev \
  libxmlsec1-dev \
  libffi-dev \
  liblzma-dev 

# install latest version of python
mise use --global python@latest

# refresh mise
eval "$(mise activate bash)"

# update pip
pip install --upgrade pip

# install some python packages
pip install django
pip install tldr
