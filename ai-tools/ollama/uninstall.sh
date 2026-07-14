# stop and disable the Ollama service
sudo systemctl stop ollama
sudo systemctl disable ollama

# remove the service file and reload systemd
sudo rm /etc/systemd/system/ollama.service
sudo rm -r /etc/systemd/system/ollama.service.d
sudo systemctl daemon-reload

# remove the Ollama binary
sudo rm $(which ollama)

# remove Ollama libraries 
sudo rm -rf /usr/local/lib/ollama
sudo rm -rf /usr/lib/ollama

# remove downloaded models
sudo rm -rf /usr/share/ollama

# remove the Ollama user and group
sudo userdel ollama
sudo groupdel ollama
