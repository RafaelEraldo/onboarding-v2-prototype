FROM node:alpine

WORKDIR /usr/app

COPY package.json ./

COPY .env ./

COPY . .

RUN npm install

COPY package-lock.json ./

RUN npm run build

EXPOSE 3331

CMD ["npm", "start"]