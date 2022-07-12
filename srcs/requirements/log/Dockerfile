FROM debian:buster-20220509

COPY ./tools/log.sh /etc/log.sh
RUN chmod +x /etc/log.sh && chown root /etc/log.sh

ENTRYPOINT ./etc/log.sh
