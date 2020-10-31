# Pull base image 
From tomcat:8

# Maintainer 
MAINTAINER "djomnange@yahoo.fr" 
COPY webapp/target/devop-code1.war /usr/local/tomcat/webapps
