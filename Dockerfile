# Start with a base image containing Java runtime
FROM codenvy/jdk8_maven3_tomcat8

# Add Author info
MAINTAINER Jinseok Kim"qwefk123@naver.com"

# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
# ARG JAR_FILE=build/libs/*.jar

# Add the application's jar to the container
ADD build/libs/*.jar app.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
