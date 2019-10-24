FROM mctekk/phalconphp:latest
RUN mkdir /app
EXPOSE 9000
WORKDIR /app
RUN yum -y install epel-release yum-utils
RUN yum -y install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum-config-manager --enable remi
RUN yum -y install redis
EXPOSE 6379
CMD bash
RUN yum -y install memcached
RUN yum -y install libmemcached
ENTRYPOINT redis-server --daemonize yes && bash