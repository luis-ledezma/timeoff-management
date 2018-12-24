FROM node:9-alpine

RUN apt-get update -y
RUN apt-get -y install sqlite3

RUN adduser --system app --home /app
USER app

WORKDIR /app
RUN git clone https://github.com/luis-ledezma/timeoff-management.git timeoff-management

WORKDIR /app/timeoff-management
RUN npm install

EXPOSE 3000
CMD npm start
