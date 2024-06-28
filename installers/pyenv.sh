# https://github.com/pyenv/pyenv

# install dependencies
sudo apt install -y \
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

# remove current installation if it already exists
rm -rf ~/.pyenv

# install pyenv and python-build
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# add to bashrc file 
echo ' ' >> ~/.bashrc
echo '# setup pyenv (python version manager)' >> ~/.bashrc
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc

# activate pyenv command for this script
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# get latest version of python
LATEST=$(pyenv install -l | grep -v [a-z] | tail -1)

# install python and set it globally
pyenv install $LATEST
pyenv global $LATEST

# install django
python -m pip install Django
