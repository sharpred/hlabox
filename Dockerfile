FROM --platform=linux/amd64 ubuntu:18.04
RUN apt update && apt -y install wget binutils vim
RUN wget http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/libc6-i386_2.27-3ubuntu1.6_amd64.deb
RUN dpkg -i libc6-i386_2.27-3ubuntu1.6_amd64.deb
RUN wget https://www.plantation-productions.com/Webster/HighLevelAsm/HLAv2.16/linux64.hla.tar.gz
RUN gzip -d linux64.hla.tar.gz
RUN tar xvf linux64.hla.tar
ENV PATH=/usr/hla:$PATH
ENV hlalib=/usr/hla/hlalib hlainc=/usr/hla/include hlatemp=/tmp
WORKDIR /src
COPY src/*.hla .
RUN hla -v hw.hla