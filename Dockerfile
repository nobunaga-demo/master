FROM ubuntu:latest

RUN apt-get update && \
apt-get install -y maven && \
mvn archetype:generate -DgroupId=com.vogella.maven.first \
-DartifactId=com.vogella.maven.first   \
-DarchetypeArtifactId=maven-archetype-quickstart \
-DarchetypeVersion=1.4 \
-DinteractiveMode=false && \
cd com.vogella.maven.first && \
mvn compile && \
mvn clean package && \
java -cp target/com.vogella.maven.first-1.0-SNAPSHOT.jar com.vogella.maven.first.App && \
cp /etc/maven/settings.xml /root/.m2/ && \
ls -al /root/.m2/


ENTRYPOINT [ "/bin/bash", "-c" ]




