# Base img
FROM debian:buster-20220509

RUN apt-get update \
    && apt-get install vsftpd -y

RUN mkdir /etc/ftp && chmod a-w /etc/ftp
#&& mkdir /etc/ftp/pub && chmod 777 /etc/ftp/pub
COPY ./vsftpd.conf /etc/vsftpd.conf
RUN chown root /etc/vsftpd.conf

EXPOSE 21

ENTRYPOINT service vsftpd start && bash
