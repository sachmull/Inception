# Base img
FROM debian:buster-20220509

RUN apt-get update \
    && apt-get install vsftpd -y

RUN mkdir /etc/ftp && chmod a-w /etc/ftp
#&& chmod +w /etc/ftp/wordpress/
COPY ./vsftpd.conf /etc/vsftpd.conf
RUN chown root /etc/vsftpd.conf

EXPOSE 21

ENTRYPOINT chmod 777 /etc/ftp/wordpress && chown ftp /etc/ftp/wordpress && service vsftpd start && bash
