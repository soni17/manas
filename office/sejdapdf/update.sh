source run-commands/updater.sh

installed_version=$(apt info sejda-desktop | grep Version | cut -d ' ' -f 2)
latest_version=$(curl https://www.sejda.com/desktop | grep amd64.deb | grep -o [0-9].[0-9].[0-9])

updater $installed_version $latest_version "office/sejdapdf/install.sh" "SejdaPDF"
