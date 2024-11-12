FROM node:16.13-alpine AS development

WORKDIR /usr/src/app

COPY package*.json ./
COPY yarn.lock ./

RUN yarn

COPY . .

CMD ["npm", "start"]

