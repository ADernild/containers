#!/bin/bash

source /work/*/env/.env

export DIR=etc/pgbouncer/

mkdir -p $DIR && cd $DIR

echo "[databases] 
${DBNAME} = host=${DBHOST} port=5432 dbname=${DBNAME} user=${DBUSER} password=${DBPASS}

[pgbouncer]
listen_port = 6432
listen_addr = 0.0.0.0
auth_type = trust
auth_file = userlist.txt
server_tls_sslmode = require
logfile = pgbouncer.log
pidfile = pgbouncer.pid
ignore_startup_parameters=options
" > pgbouncer.ini

echo \"${DBUSER}\" \"${DBPASS}\" > userlist.txt