FROM centos:7

MAINTAINER waycambas waycambas8@gmail.com

# run for supervisor-d
COPY app /app

# pkg for NGINX
RUN yum -y install epel-release

# yum update application
RUN yum -y update

# install extras package
RUN yum -y install curl

# install nodejs
RUN curl -sL https://rpm.nodesource.com/setup_10.x | bash -
RUN yum -y install nodejs
RUN node --version
RUN npm --version

# Install NGINX and SUPERVISORD
RUN yum -y install nginx supervisor 

# Give permission to run.sh
RUN chmod +x /app/run.sh

EXPOSE 80 9000 9001 3000

CMD ["/app/run.sh"]