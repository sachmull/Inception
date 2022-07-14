# Base img
FROM debian:buster-20220509

# Install vsftpd (very secure ftp deamon)
RUN apt-get update \
    && apt-get install vsftpd -y

# Create anon root dir and remove write right, so vsftpd doesnt throw error
RUN mkdir /etc/ftp && chmod a-w /etc/ftp

COPY ./conf/vsftpd.conf /etc/vsftpd.conf
RUN chown root /etc/vsftpd.conf

EXPOSE 21

COPY ./tools/keep_alive.sh ./keep_alive.sh
RUN chmod +x keep_alive.sh

# Set rights in a way anon user can access everything without vsftpd making trouble
ENTRYPOINT chmod 777 /etc/ftp/wordpress && chown ftp /etc/ftp/wordpress && service vsftpd start && ./keep_alive.sh
