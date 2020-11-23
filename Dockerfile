FROM amd64/openjdk:15-jdk-slim

#COPY target/my-java-project-1.0-SNAPSHOT.jar /app.jar

ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urando -jar /app.jar" ]
EXPOSE 8080
