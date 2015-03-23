FROM java:7
MAINTAINER Oskar Hane "oh@oskarhane.com"

RUN wget -O - http://debian.neo4j.org/neotechnology.gpg.key | apt-key add - 
RUN echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list
RUN apt-get -q update && apt-get install neo4j -y -q && apt-get clean

RUN ulimit -n 65536
RUN sed -i "s|#org.neo4j.server.webserver.address=0.0.0.0|org.neo4j.server.webserver.address=0.0.0.0|g" /var/lib/neo4j/conf/neo4j-server.properties

EXPOSE 7474
EXPOSE 7473
EXPOSE 1337

VOLUME  ["/opt/neo4j/conf", "/opt/neo4j/data/graph.db", "/opt/neo4j/data/log", "/opt/neo4j/plugins"]

CMD ["/var/lib/neo4j/bin/neo4j", "console"]
