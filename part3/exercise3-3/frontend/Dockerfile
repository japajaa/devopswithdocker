FROM ubuntu:16.04

ADD frontend-example-docker /frontend-example-docker

WORKDIR /frontend-example-docker

RUN apt-get update && apt-get install -y curl && \
curl -sL https://deb.nodesource.com/setup_10.x | bash && \
apt-get install -y nodejs && \
apt-get purge -y --auto-remove curl && \ 
rm -rf /var/lib/apt/lists/* && \
npm install && \ 
useradd -m app && \
chown -R app ./

USER app 

CMD npm start

EXPOSE 5000
