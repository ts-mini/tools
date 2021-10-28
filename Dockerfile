FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git
RUN apt-get install -y postgresql-client
RUN export DEBIAN_FRONTEND=noninteractive DEBCONF_NONINTERACTIVE_SEEN=true && apt-get install -y dnsutils
RUN apt-get install -y netcat
RUN apt-get install -y redis-tools
RUN apt-get install -y traceroute tcptraceroute
RUN apt-get install -y htop nload tree
RUN apt-get install -y curl wget
RUN apt-get install -y vim
RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"