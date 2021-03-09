FROM minchinweb/base

ARG DEBIAN_FRONTEND=noninteractive

EXPOSE 21025

COPY root/ /

# the server executable and base game assets need to be provided and mounted under /app
VOLUME /config
VOLUME /app

CMD /app/linux/starbound_server -bootconfig /config/sbinit.config


LABEL maintainer="MinchinWeb" \
      org.label-schema.description="Personal Starbound server; provide your own Starbound in /app" \
      org.label-schema.build-date=${BUILD_DATE} \
      org.label-schema.vcs-url=${URL} \
      org.label-schema.vcs-ref=${COMMIT} \
      org.label-schema.schema-version="1.0.0-rc1"
