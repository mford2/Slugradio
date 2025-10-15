# Stage 1: Build
FROM maven:3.9.8-eclipse-temurin-21 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline -B
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Runtime
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=build /app/target/slugradio-1.0.0-shaded.jar /app/slugradio.jar
COPY src/main/resources/playlists ./playlists
ENV DISCORD_TOKEN=changeme
CMD ["java", "-jar", "/app/slugradio.jar"]
