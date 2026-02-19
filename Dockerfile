# On utilise une image Node.js (beaucoup plus légère)
FROM node:18-alpine

# On définit le dossier de travail
WORKDIR /app

# On copie le fichier des dépendances
COPY package.json ./

# On installe les dépendances (l'équivalent de mvn install)
RUN npm install

# On copie tout le reste du code (app.js, etc.)
COPY . .

# On expose le port utilisé par ton app.js (généralement 3000)
EXPOSE 3000

# On lance l'application
CMD ["node", "app.js"]
