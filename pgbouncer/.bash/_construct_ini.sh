#!/bin/bash

source /work/githubbing/env/.env

echo "[databases] 
${DBNAME} = host=${DBHOST} dbname=${DBNAME} user=${DBUSER} password=${DBPASS}

[pgbouncer]
listen_port = 6432
listen_addr = 0.0.0.0
auth_type = trust
auth_file = userlist.txt
logfile = pgbouncer.log
pidfile = pgbouncer.pid
ignore_startup_parameters=options
" > pgbouncer.ini

echo '"${DBUSER}" "${DBPASS}"' > userlist.txt