FROM node:18


WORKDIR /usr/src/app

COPY package.json package-lock.json ./

RUN npm install

COPY . .

EXPOSE 3000
EXPOSE 3005

CMD [ "sh", "-c", "npm run start && npm run start:server" ]
