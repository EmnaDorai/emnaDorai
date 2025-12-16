# Base image Java 17
FROM eclipse-temurin:17-jdk-alpine

# Jar construit par Maven
ARG JAR_FILE=target/TP-Projet-2025-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

# Expose le port 8080
EXPOSE 8080

# Commande pour lancer l'application
ENTRYPOINT ["java","-jar","/app.jar"]
