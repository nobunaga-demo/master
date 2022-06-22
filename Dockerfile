FROM ubuntu:latest

RUN apt-get update && \
apt-get install -y maven && \
mkdir ~/.m2 && \
cp /usr/share/maven/conf/settings.xml ~/.m2/ && \
cd ~/.m2 && \
mvn archetype:generate -DgroupId=com.vogella.maven.first \
-DartifactId=com.vogella.maven.first   \
-DarchetypeArtifactId=maven-archetype-quickstart \
-DarchetypeVersion=1.4 \
-DinteractiveMode=false && \
cd com.vogella.maven.first && \
mvn compile && \
mvn clean package && \
java -cp target/com.vogella.maven.first-1.0-SNAPSHOT.jar com.vogella.maven.first.App

ENTRYPOINT [ "/bin/bash", "-c" ]




