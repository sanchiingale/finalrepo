# FROM tomcat:8.0-alpine
# ARG JAR_FILE= target/*.jar
# COPY ${JAR_FILE} app.jar
# EXPOSE 8080
# ENTRYPOINT ["java","-jar","/app.jar"]

FROM openjdk:8-jre-alpine
COPY target/myproject1*.war /app.war
CMD ["/usr/bin/java", "-jar", "/app.war"]
//CMD ["catalina.sh", "run"]
