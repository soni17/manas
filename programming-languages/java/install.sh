# https://openjdk.org/
# https://github.com/halcyon/asdf-java

# install latest version of Java (openjdk)
asdf plugin add java
OPENJDK=$(asdf list all java | grep openjdk | grep -v + | tail -1)
asdf install java $OPENJDK &> /dev/null
asdf global java $OPENJDK
