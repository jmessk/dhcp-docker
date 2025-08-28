FROM debian:bookworm-slim

RUN apt-get update && apt-get install -y --no-install-recommends \
    kea-dhcp4-server
