Unofficial Docker image for Neo4j Graph Database
=====

Neo4j is a highly scalable, robust (fully ACID) native graph database. Neo4j is used in mission-critical apps by thousands of leading, startups, enterprises, and governments around the world. Read more at [Neo4j.com](http://neo4j.com).

With this Docker repository you get Neo4j Community Edition containers ready to go for development/testing purposes. The `:testing` tag gives you the latest unstable release while the `:latest` tag gives your the latest stable release.

### Setup

 1. Execute this command:

    `docker run -itd -p 7474 oskarhane/docker-neo4j`  
or  
    `docker run -itd -p 7474 oskarhane/docker-neo4j:testing`
    
 2. Run `docker ps` to find out the port.

 3. If you're on Windows or OS X run `boot2docker ip` to find out your local docker ip address. In Linux `localhost` is probably fine.
    
 4. Access to http://yourlocalip:port with your web browser.
