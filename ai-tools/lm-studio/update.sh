source scripts/updater.sh

installed_version=$(nala show lm-studio | grep Version | cut -d " " -f 2 | cut -d "+" -f 1)
latest_version=$(curl -sIL "https://lmstudio.ai/download/latest/linux/x64?format=deb" | grep location | cut -d '/' -f 6 | cut -d "-" -f 1)

updater $installed_version $latest_version "ai-tools/lm-studio/install.sh" "lm-studio"
