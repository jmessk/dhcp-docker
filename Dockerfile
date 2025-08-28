FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    kea-dhcp4-server

RUN mkdir -p /var/lib/kea /var/run/kea /run/kea \
    && touch /var/lib/kea/kea-leases4.csv

ENTRYPOINT ["/usr/sbin/kea-dhcp4"]
CMD ["-c", "/etc/kea/kea-dhcp4.conf", "-d"]
