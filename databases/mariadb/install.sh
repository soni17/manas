# https://mariadb.org/

# install
sudo apt-get install -y mariadb-server

# add sample database
sudo mariadb -e "create database classicmodels"
sudo mariadb classicmodels < databases/mariadb/sampledb.sql

# mysql_secure_installation
