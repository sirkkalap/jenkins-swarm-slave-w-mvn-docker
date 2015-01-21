FROM sirkkalap/jenkins-swarm-slave

MAINTAINER Petri Sirkkala <sirpete@iki.fi>

USER root

# Time zone
RUN echo "Europe/Helsinki" > /etc/timezone \
 && dpkg-reconfigure --frontend=noninteractive tzdata

RUN apt-get update

# Install git (just for fun :)
RUN apt-get -y install git

# Maven
RUN apt-get -y install maven

USER jenkins-slave
