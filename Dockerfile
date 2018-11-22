FROM ubuntu:trusty

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -y install \
    supervisor \
    postfix \
    sasl2-bin \
    opendkim \
    opendkim-tools

ADD assets/install.sh /opt/install.sh

CMD /opt/install.sh;/usr/bin/supervisord -c /etc/supervisor/supervisord.conf
