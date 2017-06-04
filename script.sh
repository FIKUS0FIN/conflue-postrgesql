#!/bin/bash
echo "hello"
mkdir -p lol
sudo ./atlassian-confluence-6.2.1-x64.bin < atl-comand
echo "atlasian instaletion finish"
echo "start installing nginx"
cd nginx
sudo ./bootstrap.sh
sudo service nginx restart
echo "done"

sudo locale-gen en_US.UTF-8


sudo apt-get update
sudo apt-get install -y postgresql postgresql-contrib

sudo mkdir -p /var/atlassian/application-data/confluence/restore

echo "done 2"

echo "user and db created user (confluenceuser) db ( confluence )  "

	 # test create user and db

 sudo -i -u postgres

 #export LANGUAGE=en_US.UTF-8
 #export LC_ALL=en_US.UTF-8
 #export LANG=en_US.UTF-8
 #export LC_TYPE=en_US.UTF-8

# bash -c "psql -c \"CREATE ROLE confluenceuser with LOGIN PASSWORD 'pass'\" "
# bash -c "createdb --owner confluenceuser  confluence"







# sudo -i -u postgres
# psql
# create role confluenceuser with login password 'pass' valid until 'infinity';
# create database confluence with  owner=confluenceuser connection limit=-1;

#\q
#  exit
# configure from localhost:8090

# Move existing database to new server
#
# sudo -i -u postgres
# pg_dump confluence > confluence.db.dump

#  Move the dump to the new server

# sudo -i -u postgres

# psql confluence < confluence.db.dump
