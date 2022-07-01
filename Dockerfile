FROM openjdk:18

LABEL Thomas="lukasduechting@mailbox.org"

ADD backend/target/FirstSecurity.jar FirstSecurity.jar

CMD [ "sh", "-c", "java -Dserver.port=$PORT -Dspring.data.mongodb.uri=$MONGODB_URI -jar /FirstSecurity.jar" ]