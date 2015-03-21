FROM centos:centos7
MAINTAINER Davide Donattini <davide@studiomado.it>

RUN yum -y update && yum clean all
RUN yum install -y epel-release 
RUN yum install -y nodejs
RUN yum install -y npm

COPY . /src
RUN cd /src; npm install -g

EXPOSE  1337
#CMD ["forever start", "/src/index.js"]
CMD ["node", "/src/index.js"]