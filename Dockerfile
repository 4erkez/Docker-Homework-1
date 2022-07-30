FROM ubuntu:18.04
LABEL maintainer="sergey.cherkez@gmail.com"
LABEL version="1.0"
LABEL description="Apache / Port 8080"
RUN useradd -ms /bin/bash hillel_devops && apt-get update && apt-get install -y apache2
COPY index.html /var/www/html/index.html
COPY ports.conf /etc/apache2/ports.conf
EXPOSE 8080
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]