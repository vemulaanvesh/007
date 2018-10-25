FROM jenkins:1.596 
USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
 
USER jenkins
COPY scr/ /var/www/html
EXPOSE 80
CMD ("echo", hi mama)
