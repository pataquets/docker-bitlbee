FROM pataquets/ubuntu:focal

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive \
  apt-get install -y --no-install-recommends \
    bitlbee-libpurple \
  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/

ENTRYPOINT [ "bitlbee", "-n" ]
