#!/bin/bash
# Author: Maxwel Leite
# Website: http://needforbits.tumblr.com/
# Description: Script to install the original Microsoft Tahoma Regular and MS Tahoma Bold (both version 2.60) on Ubuntu distros.
# Dependencies: wget and cabextract
# Tested: Ubuntu Saucy/Trusty/Xenial

# install dependencies
sudo apt-get install -y \
	wget \
	cabextract 

output_dir="/usr/share/fonts/truetype/msttcorefonts/"
tmp_dir="/tmp/ttf-ms-tahoma-installer"

file="$tmp_dir/IELPKTH.CAB"
mkdir -p "$tmp_dir"
cd "$tmp_dir"
err=0

echo -e "\n:: Downloading IELPKTH.CAB...\n"
wget -q -O "$file" https://sourceforge.net/projects/corefonts/files/OldFiles/IELPKTH.CAB
if [ $? -ne 0 ]; then
	rm -f "$file"
	echo -e "\nError: Download failed!?\n"
	err=1
else
	echo -e "Done!\n"
fi

if [ $err -ne 1 ]; then
	echo -n ":: Extracting... "
	cabextract -t "$file" &> /dev/null
	if [ $? -ne 0 ]; then
		echo "Error: Can't extract. Corrupted download!?"
		err=1
	else
		cabextract -F 'tahoma*ttf' "$file" &> /dev/null
		if [ $? -ne 0 ]; then
			echo "Error: Can't extract 'tahoma.ttf' and 'tahomabd.ttf' from 'IELPKTH.CAB'. Corrupted download!?"
			err=1
		else
			echo "Done!"
		fi
	fi
fi

if [ $err -ne 1 ]; then
	echo -n ":: Installing... "
	mkdir -p "$output_dir"
	cp -f "$tmp_dir"/*.ttf "$output_dir"  &> /dev/null
	if [ $? -ne 0 ]; then
		echo "Error: Can't copy files to output directory."
		err=1
	else
		echo "Done!"
	fi
fi

if [ $err -ne 1 ]; then
	echo -n ":: Clean the font cache... "
	fc-cache -f "$output_dir" &> /dev/null
	echo "Done!"
fi

echo -n ":: Cleanup... "
cd - &> /dev/null
rm -rf "$tmp_dir" &> /dev/null
echo "Done!"

if [ $err -ne 1 ]; then
	echo -e "\nCongratulations! Installation of ttf-ms-tahoma-installer is successful!!\n"
else
	echo -e "\nSome error occurred! Please try again!!\n"
fi

# not needed anymore
sudo apt-get purge -y fontforge
