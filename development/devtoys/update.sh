source scripts/updater.sh

installed_version=$(apt info devtoys | grep Version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/DevToys-app/DevToys/releases" | grep -Po '"tag_name": "\K[^"]*' | head -n 1  | tr -d 'v')

updater $installed_version $latest_version "development/devtoys/install.sh" "devtoys"
