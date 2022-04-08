FROM maven:3.8.5-openjdk-11-slim
WORKDIR /app
EXPOSE 8080
COPY . /app
RUN mvn clean install
RUN ls /app/target
ENTRYPOINT ["java", "-jar", "/app/target/quarkus-hello-world-maven-1.0.0-SNAPSHOT-runner.jar"]