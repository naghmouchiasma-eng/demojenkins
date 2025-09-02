# Utiliser l'image officielle de Node.js
FROM node:16

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier les fichiers du projet dans le conteneur
COPY package*.json ./
COPY app.js ./

# Installer les dépendances (même si ce projet n'en a pas)
RUN npm install

# Exposer le port (même si ce projet n'écoute pas sur un port spécifique)
EXPOSE 3000

# Définir la commande d'exécution pour afficher "Hello World"
CMD ["node", "app.js"]
