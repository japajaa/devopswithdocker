FROM node:alpine

ADD frontend-example-docker /frontend-example-docker

WORKDIR /frontend-example-docker

RUN npm install && \ 
adduser -D app && \
chown -R app ./

USER app 

CMD npm start

EXPOSE 5000
