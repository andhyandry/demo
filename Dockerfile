FROM openjdk:17-alpine

ENV APPLICATION_USER appuser
RUN adduser -D $APPLICATION_USER

USER $APPLICATION_USER

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8085

ENTRYPOINT ["java","-jar","/app.jar"]