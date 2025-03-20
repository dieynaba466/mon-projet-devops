# Utilisation de l'image officielle de Python
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier le code source dans le conteneur
COPY app/server.py .

# Exposer le port 8000
EXPOSE 8000

# Commande pour exécuter le serveur HTTP
CMD ["python", "server.py"]
