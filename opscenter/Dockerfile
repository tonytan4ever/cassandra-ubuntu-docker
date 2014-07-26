# OpsCenter
#
# VERSION		1.0

FROM ubuntu:14.04
MAINTAINER Tony Tan, tonytan198211@gmail.com

# Install curl
RUN apt-get update
RUN apt-get install -y curl

# Install datastax OpsCenter
RUN echo "deb http://debian.datastax.com/community stable main" | sudo tee -a /etc/apt/sources.list.d/datastax.sources.list
RUN curl -L http://debian.datastax.com/debian/repo_key | sudo apt-key add -
RUN apt-get update
RUN apt-get install -y openssh-client
RUN apt-get install -y opscenter 

ADD src/start.sh /usr/local/bin/start
RUN chmod 755 /usr/local/bin/start

# See http://www.datastax.com/documentation/opscenter/4.0/opsc/reference/opscPorts_r.html
EXPOSE 8888 61620 50031
USER root 
CMD start 