# add sample database if it's not there
if ! sudo mariadb -e "show databases" | grep classicmodels &> /dev/null
then
  sudo mariadb -e "create database classicmodels"
  sudo mariadb classicmodels < databases/mariadb/sampledb.sql
fi
