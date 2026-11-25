FROM ubuntu:24.04

RUN apt-get update -y && \
    apt-get install -y apache2 && \
    rm -rf /var/lib/apt/lists/*

COPY . /var/www/html

EXPOSE 80

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
