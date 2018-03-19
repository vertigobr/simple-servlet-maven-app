#
# Dockerfile para uso com o docker-compose (desenv)
#
FROM maven:ibmjava

COPY src /opt/app/src
COPY pom.xml /opt/app
WORKDIR /opt/app
RUN mvn package

EXPOSE 8080

CMD ["mvn","-Djetty.reload=automatic","-Djetty.scanIntervalSeconds=2","jetty:run"]
