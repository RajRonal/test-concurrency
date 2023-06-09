FROM node:18-alpine
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "package-lock.json*", "./"]

RUN npm install --production

RUN npx db-migrate up

COPY . .

#comment to test deploy

CMD ["npm", "start","dev"]
