FROM node:18.4.0-alpine
WORKDIR /app
ADD package*.json ./
RUN yarn
ADD app.js ./
ADD .env ./
EXPOSE 3005
CMD [ "yarn", "start"]