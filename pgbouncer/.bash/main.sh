#!/bin/bash

# Installing pgbouncer
echo "Installing pgbouncer"
. _dep.sh

# Constructing .ini

echo "Constructing config for pgbouncer"
. _construct_ini.sh

# Starting pgbouncer in detached mode

echo "Starting pgbouncer service"
pgbouncer -d ../etc/pgbouncer/pgbouncer.ini
