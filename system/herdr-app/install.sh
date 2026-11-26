# https://herdr.dev
# https://github.com/herdrdev/herdr-app

curl -fsSL https://releases.herdr.dev/app/install.sh | sh

sed -i 's/Categories=Development/Categories=System/' ~/.local/share/applications/herdr-app.desktop
