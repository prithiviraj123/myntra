From tomcat:8-jre8

# Maintainer
MAINTAINER "Ajaxtech"

# copy war file on to container 
COPY  ./diyaskart.war /usr/local/tomcat/webapps

