FROM ubuntu:latest

RUN apt-get update && \
apt-get install -y maven && \
mkdir ~/.m2 && \
cp /etc/maven/settings.xml ~/.m2/ && \
cd ~/.m2

ENTRYPOINT [ "/bin/bash", "-c" ]

