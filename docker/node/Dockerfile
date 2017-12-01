FROM ubuntu:latest

RUN apt-get update

RUN apt-get install -y apt-utils

RUN apt-get install -y curl xz-utils file

RUN cd /usr/local; curl -skL https://nodejs.org/dist/v6.11.1/node-v6.11.1-linux-x64.tar.xz | xz -d | tar -xv

RUN echo "PATH=$PATH:/usr/local/node-v6.11.1-linux-x64/bin" > /etc/profile.d/node

RUN echo "export PATH=$PATH:/usr/local/node-v6.11.1-linux-x64/bin" >> /root/.bashrc

