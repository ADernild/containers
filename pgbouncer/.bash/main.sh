#!/bin/bash

# Installing pgbouncer

. /_dep.sh

# Constructing .ini

. /_construct_ini.sh

# Starting pgbouncer in detached mode

pgbouncer -d pgbouncer.ini
