FROM openjdk:18

LABEL Lukas="lukasduechting@mailbox.org"
ENV ENVIRONMENT=prod

ADD backend/target/FirstSecurity.jar FirstSecurity.jar

CMD [ "sh", "-c", "java -Dserver.port=$PORT -Dspring.data.mongodb.uri=$MONGODB_URI -jar /FirstSecurity.jar" ]