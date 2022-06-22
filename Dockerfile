FROM ubuntu:latest

COPY ./hello.sh /

RUN apt-get update && \
apt-get install -y maven && \
chmod +x /hello.sh

RUN cd / && \
./hello.sh

ENTRYPOINT [ "/bin/bash", "-c" ]
