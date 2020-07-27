FROM ubuntu:18.04

RUN apt-get update && apt-get install -y squid

COPY squid.conf /etc/squid/squid.conf

CMD service squid start && tail -F /var/log/squid/access.log