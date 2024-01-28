FROM node:20.11.0-alpine3.19

WORKDIR /usr/src/app

COPY package*.json ./

# Installa le dipendenze, inclusi i devDependencies
RUN npm install

# Installa ts-node globalmente
RUN npm install -g ts-node
RUN npm install -g nodemon

# Copia il resto dei file del progetto
COPY . .

EXPOSE 3000

CMD ["npm", "start"]