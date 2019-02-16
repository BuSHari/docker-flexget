FROM python:3-alpine

# Copy local files.
COPY etc/ /etc
RUN chmod -v +x \
    /etc/cont-init.d/*  \
    /etc/services.d/*/run

# volumes.
VOLUME /config
