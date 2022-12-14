FROM node:19.2-alpine

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --omit=dev

COPY . .

EXPOSE 5000

CMD ["node", "./src/server.js"]
