# LAMP - Adding SSL to the Official PHP and Apache docker image
To use your own certificates just replace the SSLCertificateFile using a volume for /etc/ssl/certs/ssl-cert-snakeoil.pem and the SSLCertificateKeyFile using a volume for /etc/ssl/private/ssl-cert-snakeoil.key
