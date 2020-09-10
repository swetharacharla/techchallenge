FROM node:12-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY index.js ./
COPY src ./src/

EXPOSE 4000
CMD [ "node", "." ]
