FROM node:alpine

ADD backend-example-docker /backend-example-docker

WORKDIR /backend-example-docker

RUN npm install && \ 
adduser -D app && \
chown -R app ./

USER app 

CMD npm start

EXPOSE 8000
