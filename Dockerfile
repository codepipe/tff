FROM centos:latest
RUN yum update -y
RUN yum install curl -y
WORKDIR /opt/Apponix
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.55/bin/apache-tomcat-9.0.55.tar.gz /opt/Apponix
ENTRYPOINT ls

