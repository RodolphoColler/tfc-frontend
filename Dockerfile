FROM node:16-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV GENERATE_SOURCEMAP=false

CMD ["npm", "start"]