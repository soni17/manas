source scripts/updater.sh

installed_version=$(pdfcraft --version | cut -d ' ' -f 2)
latest_version=$(curl -s "https://api.github.com/repos/storytold/pdfcraft/releases/latest" | grep -Po '"tag_name": "\K[^"]*' | tr -d 'v')

updater $installed_version $latest_version "office/pdfcraft/install.sh" "pdfcraft"
