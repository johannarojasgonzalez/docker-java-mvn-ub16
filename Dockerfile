FROM ubuntu:16.04

RUN apt-get update
# wget, unzip
RUN apt-get install -y wget \
    unzip \
    apt-file \
    vim

RUN apt-get -y install openjdk-8-jdk
RUN export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
RUN apt-get -y install maven

ENTRYPOINT ["mvn"]