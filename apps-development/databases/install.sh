sudo apt-get install -y \
  postgresql \
  redis \
  sqlite3

sudo apt-get install -y mariadb-server
sudo mariadb -e "create database classicmodels"
sudo mariadb classicmodels < sampledb.sql
#m mysql_secure_installation
