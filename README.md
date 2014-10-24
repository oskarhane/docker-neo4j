Docker image for Neo4j Graph Database
=====

Neo4j is a highly scalable, robust (fully ACID) native graph database. Neo4j is used in mission-critical apps by thousands of leading, startups, enterprises, and governments around the world.

With the Dockerfile on repository you've a docker neo4j community edition image ready to go for testing purposes.

### Setup

 1. Execute this command:

    `docker run -i -t -d --privileged -p 7474 oskarhane/docker-neo4j`
    
 2. Run `docker ps` to find out the port.

 3. If you're on Windows or OS X run `boot2docker ip` to find out your local docker ip address. In Linux `localhost` is probably fine.
    
 4. Access to http://yourlocalip:port with your web browser.
