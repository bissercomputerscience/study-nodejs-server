FROM node:20-slim

WORKDIR /usr/src/app

COPY ./src/package*.json ./

RUN npm install --only=production

COPY ./src/ ./

CMD [ "npm", "start" ]

