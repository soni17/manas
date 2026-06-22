source scripts/updater.sh

installed_version=$(apt info sejda-desktop | grep Version | cut -d ' ' -f 2)
latest_version=$(curl 'https://www.sejda.com/desktop' \
  -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36' \
  -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' \
  -H 'Accept-Language: en-US,en;q=0.9' \
  -H 'Connection: keep-alive' | grep amd64.deb | grep -o [0-9].[0-9].[0-9])

updater $installed_version $latest_version "office/sejdapdf/install.sh" "SejdaPDF"
