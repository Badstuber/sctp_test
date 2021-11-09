FROM ubuntu:18.04

RUN apt-get update -y
RUN apt-get install lksctp-tools -y

CMD sctp_test -H 0.0.0.0 -P 8000 -l
