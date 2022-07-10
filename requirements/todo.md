# Mariadb
- [x] use env var in docker
- dont use bash in dockerfile
- port expose needed?
- look that mariadb service is startet before wordpress can start

wordpress
- if mariadb databank connection is wasnt established before start - restart wordpress (you can see it when the wp-config.php is not found??)
- make wp reachable through domain name