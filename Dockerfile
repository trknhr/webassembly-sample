#FROM alpine:3.5
#
#RUN apk add --update
#RUN apk add --no-cache git cmake clang wget python gcc build-base llvm alpine-sdk
#
#RUN git clone https://github.com/juj/emsdk.git
#
#RUN cd emsdk
#RUN git config http.postBuffer 52428800000
#RUN ./emsdk install sdk-incoming-64bit binaryen-master-64bit &&
#        ./emsdk activate sdk-incoming-64bit binaryen-master-64bit
#
#RUN source ./emsdk_env.sh

FROM ubuntu:16.04

RUN apt-get -y update
RUN	apt-get -y install git build-essential cmake clang

RUN git clone https://github.com/juj/emsdk.git
RUN cd emsdk
RUN git config http.postBuffer 52428800000000

RUN ./emsdk install sdk-incoming-64bit binaryen-master-64bit &&
        ./emsdk activate sdk-incoming-64bit binaryen-master-64bit

RUN source ./emsdk_env.sh
