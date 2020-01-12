FROM node:alpine as build-frontend

ADD frontend-example-docker /frontend-example-docker

WORKDIR /frontend-example-docker

RUN npm install && \ 
npm run build

FROM node:alpine

COPY --from=build-frontend /frontend-example-docker/dist/ /frontend-build

WORKDIR /frontend-build

RUN npm install -g serve && \ 
adduser -D app && \
chown -R app ./

USER app 

CMD serve -s -l 5000

EXPOSE 5000