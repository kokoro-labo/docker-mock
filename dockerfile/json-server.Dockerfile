FROM node:latest

RUN npm install -g json-server json-server-auth fs body-parser jsonwebtoken helmet express

ENV NODE_PATH /usr/local/lib/node_modules

WORKDIR /data

CMD ["json-server", "--watch", "./main/data.json", "--host", "0.0.0.0"]