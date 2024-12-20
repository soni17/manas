rm -f ~/.bashrc
rm -f ~/.bash_aliases
rm -f ~/.asdfrc

# restore original .bashrc file provided by OS
cp /etc/skel/.bashrc ~/.bashrc
