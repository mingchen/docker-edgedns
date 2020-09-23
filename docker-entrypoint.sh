#!/bin/bash
#
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#entrypoint
#
set -e

cat /etc/motd

echo ""
date
echo
echo "HOSTNAME: $HOSTNAME"
echo "WORKDIR: $WORKDIR"

if [ "$1" = 'edgedns' ]; then
    echo "Run as edgedns(uid=$(id -u edgedns)): \"$@\""
    exec gosu edgedns "$@"
fi

exec "$@"
