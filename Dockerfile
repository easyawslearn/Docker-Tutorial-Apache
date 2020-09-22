FROM centos
RUN yum -y install httpd; yum clean all; systemctl enable httpd.service
COPY . /var/www/html/
EXPOSE 80
CMD httpd -D FOREGROUND
