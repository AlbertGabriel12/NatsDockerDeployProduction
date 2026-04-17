FROM nats:alpine

# Copia config
COPY nats-tls.conf /etc/nats/nats-tls.conf

# Script de entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
