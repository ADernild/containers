#!/bin/bash

## Adding PGDG apt repository

wget -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -


sudo su -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -sc)-pgdg main' >> /etc/apt/sources.list.d/pgdg.list"

sudo apt-get update && \
sudo apt-get install -y pgdg-keyring
sudo apt-get install -y pgbouncer

sudo mv etc/pgbouncer/pgbouncer.ini /etc/pgbouncer/pgbouncer.ini