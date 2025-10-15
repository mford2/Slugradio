FROM eclipse-temurin:17-jre
WORKDIR /app
COPY target/slugradio.jar /app/slugradio.jar
ENV DISCORD_TOKEN=changeme
CMD ["java", "-jar", "slugradio.jar"]
