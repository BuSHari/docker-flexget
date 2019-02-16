FROM python:3-alpine

ENV S6_BEHAVIOUR_IF_STAGE2_FAILS="2"

# Set python to use utf-8 rather than ascii.
ENV PYTHONIOENCODING="UTF-8"

# Copy local files.
COPY etc/ /etc
RUN chmod -v +x \
    /etc/cont-init.d/*  \
    /etc/services.d/*/run

# volumes.
VOLUME /config
