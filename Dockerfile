FROM ubuntu:21.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=UTC
ENV TF_VERSION=0.15.5

RUN apt-get update
RUN apt-get -y install vim wget unzip python3-pip

RUN pip3 install -U awscli awsebcli

RUN wget -q https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip \
    && unzip -o terraform_${TF_VERSION}_linux_amd64.zip -d /usr/local/bin \
    && rm terraform_${TF_VERSION}_linux_amd64.zip