FROM centos:7

#Install nginx
ADD nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum clean all; yum install nginx -y

#Add nginx configuration
ADD nginx.conf /etc/nginx/nginx.conf

#Run nginx
ENTRYPOINT ["/usr/sbin/nginx",  "-c", "/etc/nginx/nginx.conf"]
