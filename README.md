# LAMP - Adding SSL to the Official PHP and Apache docker image
To use your own certificates just replace the SSLCertificateFile using a volume for /etc/ssl/certs/ssl-cert-snakeoil.pem and the SSLCertificateKeyFile using a volume for /etc/ssl/private/ssl-cert-snakeoil.key

## Some useful commands
Clone, build, tag and push
```
git clone git@github.com:nestoru/lamp-php-apache.git
cd lamp-php-apache
docker build . -t nestoru/lamp-php-apache:0.1
docker tag lamp-php-apache:0.1 nestoru/lamp-php-apache:0.1
docker push nestoru/lamp-php-apache:0.1
```

Run, inspect logs, get into the container shell
```
# better to run from docker-compose (see nestoru/lamp)
docker logs lamp-php-apache -f
docker exec -ti lamp-php-apache bash
```
```
