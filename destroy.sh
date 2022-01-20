#!/usr/bin/env bash
trap 'echo -e "\e[0;32m" && echo -ne $(date "+%Y-%m-%d %H:%M:%S") && echo " >> Executing: $BASH_COMMAND" && echo -e "\e[0m"' DEBUG

mysqldump -h127.0.0.1 --opt -uroot application -r application_$(date "+%Y%m%d_%H%M%S").sql

trap - DEBUG
