#!/bin/sh
set -eu

if [ -z "${RPC_SECRET:-}" ]; then
    echo "ERROR: RPC_SECRET is not set"
    exit 1
fi

if [ -z "${ADMIN_TOKEN:-}" ]; then
    echo "ERROR: ADMIN_TOKEN is not set"
    exit 1
fi

envsubst < /etc/garage.toml.template > /etc/garage.toml

exec /garage -c /etc/garage.toml server
