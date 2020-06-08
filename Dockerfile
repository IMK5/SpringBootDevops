FROM tomcat:8.0.51-jre8-alpine
# remove last app
RUN rm -rf /usr/local/tomcat/webapps/*
# Take the war and copy to webapps of tomcat
COPY target/dev*.war /usr/local/tomcat/webapps/devops.war
CMD ["catalina.sh","run"]
# link should be : localhost:8080/devops
