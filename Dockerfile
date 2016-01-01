FROM nodesource/trusty:5.3.0
MAINTAINER Dario Andrei <wouldgo84@gmail.com>

RUN apt-get update && apt-get upgrade -y && npm i -g limitd

RUN mkdir -p /var/limitd/database

ADD ./conf/limitd.config /opt/limitd.config
ADD ./run/bootstrap.sh /opt/bootstrap.sh
EXPOSE 9001

CMD ["/bin/bash", "/opt/bootstrap.sh" ]
