# Start with a base image containing Java runtime
FROM rtfpessoa/ubuntu-jdk8

# Add Author info
MAINTAINER Jinseok Kim"qwefk123@naver.com"

# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8081

# The application's jar file
ARG JAR_FILE=build/libs/docker-test-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} docker-test.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/docker-test.jar"]
