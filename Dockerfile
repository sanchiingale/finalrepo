# FROM tomcat:8.0-alpine
# ARG JAR_FILE= target/*.jar
# COPY ${JAR_FILE} app.jar
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","/app.jar"]

FROM tomcat
COPY ROOT.war ./usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
