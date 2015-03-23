FROM dockerfile/java
MAINTAINER Oskar Hane "oh@oskarhane.com"

RUN wget -O - http://debian.neo4j.org/neotechnology.gpg.key | apt-key add - 
RUN echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list
RUN apt-get -q update && apt-get install neo4j=2.1.7 -y -q

ADD launch.sh /
RUN chmod +x /launch.sh

## clean sources
RUN apt-get clean

workdir /

EXPOSE 7474

## entrypoint
CMD ["/bin/bash", "-c", "/launch.sh"]
