FROM ubuntu:latest

RUN apt-get update && \
apt-get install -y maven && \
mkdir ~/.m2 && \
cp /usr/share/maven/conf/settings.xml ~/.m2/ && \
cd ~/.m2

ENTRYPOINT [ "/bin/bash", "-c" ]

