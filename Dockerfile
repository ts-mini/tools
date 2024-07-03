FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get upgrade -y
RUN apt-get install jq git curl ca-certificates gnupg -y
RUN apt install -y postgresql-common && /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh -i -v 15
RUN apt-get update
RUN apt install telnet inetutils-ping nano vim \
    wget curl htop nload tree traceroute \
    tcptraceroute redis-tools netcat dnsutils \
    mysql-client unzip -y
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && unzip awscliv2.zip && ./aws/install

# Squash the image

