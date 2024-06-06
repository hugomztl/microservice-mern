FROM node:20.13.1

WORKDIR /usr/src/app

COPY package*.json ./

# Nettoyer le cache npm et installer les dépendances
RUN npm cache clean --force && npm install --build-from-source

COPY . .

EXPOSE 3001

CMD ["npm", "start"]
