# https://www.python.org/
# https://github.com/asdf-community/asdf-python

# install python build dependencies
sudo apt-get install -y \
  build-essential \
  libssl-dev \
  zlib1g-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  libncursesw5-dev \
  xz-utils \
  tk-dev \
  libxml2-dev \
  libxmlsec1-dev \
  libffi-dev \
  liblzma-dev 

# install latest version of python
asdf plugin add python
asdf install python latest
asdf global python latest
pip install --upgrade pip

# install Django
python -m pip install Django
