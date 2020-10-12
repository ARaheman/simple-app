FROM node:12.18.3-alpine

WORKDIR /usr/src/app

ARG NODE_ENV
ENV NODE_ENV $NODE_ENV

COPY package*.json ./
RUN npm install

COPY . .

ENV PORT 5000
EXPOSE $PORT
ENTRYPOINT ["npm","start"]
