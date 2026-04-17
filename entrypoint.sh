#!/bin/sh
set -e

mkdir -p /tmp/certs

echo "$NATS_TLS_CERT" | base64 -d > /tmp/certs/nats-server.pem
echo "$NATS_TLS_KEY"  | base64 -d > /tmp/certs/nats-server.key
echo "$NATS_TLS_CA"   | base64 -d > /tmp/certs/rootCA.pem

exec nats-server -c /etc/nats/nats-tls.conf