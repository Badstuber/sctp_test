FROM ubuntu:18.04

WORKDIR /usr/src/app

COPY ./ .

RUN apt-get update -y
RUN apt-get install libsctp-dev -y
RUN apt-get -y install python3-pip
RUN pip3 install -r requirements.txt