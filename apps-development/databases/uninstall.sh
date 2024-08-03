sudo rm -rf /var/lib/mysql

sudo apt-get purge -y --autoremove \
  mariadb-server \
  postgresql \
  redis
