# https://nodejs.org
# https://mise.jdx.dev/lang/node.html

# install latest version of Node
mise use --global node@latest

# refresh mise
eval "$(mise activate bash)"

# install some packages
npm install -g --ignore-scripts @earendil-works/pi-coding-agent
