FROM ubuntu:latest

MAINTAINER <rubyisbeautiful> bcptaylor@gmail.com

RUN apt-get update -y && apt-get install -y \
    libgmp3-dev libsigsegv-dev openssl libssl-dev \
    libncurses5-dev git make exuberant-ctags automake autoconf libtool \
    g++ ragel cmake re2c curl

RUN git clone https://github.com/urbit/urbit

WORKDIR urbit

RUN make
RUN curl -o urbit.pill https://bootstrap.urbit.org/latest.pill
