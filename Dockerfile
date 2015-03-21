FROM centos:centos7

RUN yum -y update && yum clean all
RUN yum install -y epel-release nodejs npm

COPY . /src
RUN cd /src; npm install

EXPOSE  1337
CMD ["forever start", "/src/index.js"]