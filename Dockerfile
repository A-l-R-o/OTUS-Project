FROM openjdk:21-jdk-slim

LABEL title="Health"
LABEL description="Отправка GET запроса health для получения статуса ОК с использованием Docker контейнера"

ENV SPRING_PROFILES_ACTIVE=container

WORKDIR /health

COPY health-0.0.1-SNAPSHOT.jar app.jar

CMD ["java", "-jar", "/health/app.jar"]

# информация о  используемом порте
EXPOSE 8000