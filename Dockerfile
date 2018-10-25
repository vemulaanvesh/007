FROM jenkins:1.596 
USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
 
USER jenkins
FROM tomcat
COPY target/*.war /usr/local/tomcat/webapps/
EXPOSE 80
CMD ("echo", hi mama)
