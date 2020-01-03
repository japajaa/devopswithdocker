FROM ubuntu:16.04

ADD backend-example-docker /backend-example-docker
WORKDIR /backend-example-docker

RUN apt-get update && apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs
RUN npm install
CMD npm start

EXPOSE 8000
