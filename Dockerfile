FROM tomcat:8.0.51-jre8-alpine
# remove last app
RUN rm -rf /usr/local/tomcat/webapps/*
# Take the war and copy to webapps of tomcat
COPY target/*.war /usr/local/tomcat/webapps/myweb.war
CMD ["catalina.sh","run"]
