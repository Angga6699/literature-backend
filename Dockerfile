FROM node:16

ENV NODE_ENV production
ENV DATABASE_URL postgresql://admin:P4ssw0rd@192.168.100.59:7117/literature

WORKDIR /home/root
COPY . .

RUN npm install
RUN npm install sequelize-cli -g
RUN npx sequelize-cli db:migrate --env production
EXPOSE 5000
CMD ["node","server.js"]
