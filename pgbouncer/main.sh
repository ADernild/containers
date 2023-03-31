#!/bin/bash

# Installing pgbouncer

echo "Installing pgbouncer"
. .bash/_dep.sh

# Constructing .ini

echo "Constructing config for pgbouncer"
. .bash/_construct_ini.sh

# Starting pgbouncer in detached mode

echo "Starting pgbouncer service"
pgbouncer -d pgbouncer.ini
