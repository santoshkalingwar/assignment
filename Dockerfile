FROM tomcat:8
ADD TodoDemo-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/pro.war
EXPOSE 8080
CMD ["catalina.sh","run"]

