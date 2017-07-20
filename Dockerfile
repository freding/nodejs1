FROM centos:centos7
MAINTAINER Frederic Bourbigot <frederic.bourbigot@gmail.com>
RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
RUN yum install nodejs npm -y 
COPY ./src /opt/src
RUN cd /opt/src; npm install
EXPOSE 8080
CMD ["node", "/opt/src/index.js"]