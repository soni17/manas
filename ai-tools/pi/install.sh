# check if node is installed
command -v node

# if not installed, then install latest node
if [ $? -ne 0 ]; then 
  mise use --global node@latest
  eval "$(mise activate bash)"
fi

# install pi coding agent
npm install -g --ignore-scripts @earendil-works/pi-coding-agent
